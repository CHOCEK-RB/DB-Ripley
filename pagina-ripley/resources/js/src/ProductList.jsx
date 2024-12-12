import React, { useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import axios from "axios";

const PaginatedProducts = () => {
  const [products, setProducts] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);

  const navigate = useNavigate();
  const location = useLocation();

  const fetchProducts = async (page = 1) => {
    try {
      const response = await axios.post('api/products', {
        page: page,
      })
      const { data, currentPage , totalPages} = response.data;
      setProducts(data);
      setCurrentPage(currentPage);
      setTotalPages(totalPages);
    } catch (error) {
      console.error("Error al obtener los datos de la API", error);
    }
  };

  useEffect(() => {
    const page = new URLSearchParams(location.search).get("page") || 1;
    fetchProducts(parseInt(page, 10));
  }, [location.search]);


  const handlePageChange = (page) => {
    navigate(`/products?page=${page}`); 
    fetchProducts(page);
  };

  const renderPageNumbers = () => {
    const pageNumbers = [];
    for (let i = 1; i <= totalPages; i++) {
      pageNumbers.push(
        <button
          key={i}
          onClick={() => handlePageChange(i)}
          style={{
            margin: "0 5px",
            padding: "5px 10px",
            backgroundColor: i === currentPage ? "#ddd" : "#fff",
            border: "1px solid #ccc",
            cursor: "pointer",
          }}
        >
          {i}
        </button>
      );
    }
    return pageNumbers;
  };

  return (
    <div>
      <h1>Productos</h1>
      <div className="products-container">
        {products.map((product) => (
          <div
            key={product.ID}
            className="product-card"
            onClick={() => navigate(`/product/${product.id}`)}
            style={{
              border: "1px solid #ddd",
              padding: "10px",
              margin: "10px",
              cursor: "pointer",
              borderRadius: "5px",
              textAlign: "center",
            }}
          >
            <h2>{product.nombre}</h2>
          </div>
        ))}
      </div>
      <div className="pagination">
        {renderPageNumbers()}
      </div>
    </div>
  );
};

export default PaginatedProducts;
