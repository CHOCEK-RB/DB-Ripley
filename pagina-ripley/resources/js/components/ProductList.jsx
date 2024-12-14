import React, { useState, useEffect } from "react";
import { Link, useNavigate, useLocation } from "react-router-dom";
import "../css/productsList.css"
import axios from "axios";

const PaginatedProducts = () => {
  const [products, setProducts] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [categorie, setCategorie] = useState('');
  const [name, setName] = useState('');

  const navigate = useNavigate();
  const location = useLocation();

  const fetchProducts = async (page = 1) => {
    try {
      const { categorie} = window.dataCategorie;
      setCategorie(categorie);

      const response = await axios.post('api/products', {
        page: page,
        categorie: categorie,
      })
      const { data, currentPage , totalPages, name} = response.data;
      setProducts(data);
      setCurrentPage(currentPage);
      setTotalPages(totalPages);
      setName(name);
    } catch (error) {
      console.error("Error al obtener los datos de la API", error);
    }
  };

  useEffect(() => {
    const page = new URLSearchParams(location.search).get("page") || 1;
    fetchProducts(parseInt(page, 10));
  }, [location.search]);


  const handlePageChange = (page) => {
    navigate(`/${categorie}?page=${page}`); 
    fetchProducts(page);
  };

  const renderPageNumbers = () => {
    const pageNumbers = [];
    for (let i = 1; i <= totalPages; i++) {
      pageNumbers.push(
        <li>
          <button 
            className={i === currentPage ? "pagination paginationSelect" : "pagination"}
            key={i}
            onClick={() => handlePageChange(i)}
          >
            {i}
          </button>
        </li>
      );
    }
    return pageNumbers;
  };

  return (
    <div>
      <h1>{name}</h1>
      <div className="productsContainer">
        {products.map((product) => (
          <div
            key={product.ID}
            className="productBox"
          >
            <a href={`/productos/information?categorie=${product.categoria}&id=${product.ID}`}>
              <div className="imageProduct">
                <img src={`/src/${product.ID}.webp`}/>
              </div>
              <div className="description">
                <h2 className="nameProduct">{product.nombre}</h2>
                <h2 className="precioProduct">S/ {product.precio}</h2>
              </div>
            </a>
          </div>
        ))}
      </div>
      <div className="paginationBox">
        {renderPageNumbers()}
      </div>
    </div>
  );
};

export default PaginatedProducts;
