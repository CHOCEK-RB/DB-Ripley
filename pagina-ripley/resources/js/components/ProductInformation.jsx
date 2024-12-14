import React, { useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import "../css/productsList.css";
import axios from "axios";

const PaginatedProducts = () => {
  const [information, setInformation] = useState({});
  const [id, setId] = useState(1);
  const [categorie, setCategorie] = useState('');

  const navigate = useNavigate();
  const location = useLocation();

  const fetchProducts = async (categorie, id) => {
    try {
      setId(id);
      setCategorie(categorie);

      const response = await axios.post('/api/product/information', {
        categorie: categorie,
        id: id,
      });

      const { information } = response.data;

      setInformation(information[0]);
    } catch (error) {
      console.error("Error al obtener los datos de la API de información", error);
    }
  };

  const InformationTable = () => {
    return (
      <table className="tabladescripcion">
        <tbody>
          {Object.entries(information)
            .filter(([key]) => key !== "nombre" && key !== "precio" && key !== "id")
            .map(([key, value]) => (
              <tr key={key}>
                <td className="keyCell">{key}</td>
                <td className="valueCell">{value}</td>
              </tr>
            ))}
        </tbody>
      </table>
    );
  };

  useEffect(() => {
    const categorieParam = new URLSearchParams(location.search).get("categorie");
    const idParam = new URLSearchParams(location.search).get("id");
    if (categorieParam && idParam) {
      fetchProducts(categorieParam, parseInt(idParam));
    }
  }, [location.search]);

  return (
    <div>
      <div className="productBox">
        <div className="imageProduct">
          <img src={`/src/${id}.webp`} alt={`Producto ${id}`} />
        </div>
        <div className="informationProduct">
          {/* Renderiza condicionalmente para evitar errores */}
          {information.nombre ? (
            <>
              <h2 className="nombre">{information.nombre}</h2>
              <div className="priceContainer">
                <dd>Normal</dd>
                <dt>{information.precio}</dt>
              </div>
            </>
          ) : (
            <p>Cargando información del producto...</p>
          )}
        </div>
      </div>
      <div className="descripcionBox">
        <h2 className="nombreDescripcion">Consideraciones</h2>
        <div className="descripcion">
          {InformationTable()}
        </div>
      </div>
    </div>
  );
};

export default PaginatedProducts;
