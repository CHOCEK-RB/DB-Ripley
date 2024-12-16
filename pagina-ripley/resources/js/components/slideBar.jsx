import React, { useState, useEffect } from "react";
import "../css/bar.css";

const categories = [
  {
    icon: "👠",
    name: "Moda",
    subOptions: [
      { name: "Moda", link: "/moda" },
      { name: "Accesorios", link: "/accesorios" },
      { name: "Calzado", link: "/calsado" },
      { name: "Ropa", link: "/ropa" },
    ],
  },
  {
    icon: "🍳",
    name: "Electrodomésticos",
    subOptions: [
      { name: "Electrodomésticos", link: "/electrodomestico" },
      { name: "Cocina", link: "/cocina" },
      { name: "Lavadora", link: "/lavadora" },
      { name: "Refrigeradora", link: "/refrigeradora" },
    ],
  },
  {
    icon: "💻",
    name: "Electrónica",
    subOptions: [
      { name: "Electrónica", link: "/electronico" },
      { name: "Computadora", link: "/computadora" },
      { name: "Smartphone", link: "/smartphone" },
      { name: "Televisor", link: "/televisor" },
    ],
  },
  {
    icon: "🧸",
    name: "Juguetes",
    subOptions: [
      { name: "Juguetes", link: "/juguete" },
      { name: "Construcción", link: "/juguetes-construccion" },
      { name: "Juegos de Mesa", link: "/juegos-mesa" },
      { name: "Muñecos", link: "/muñeco" },
    ],
  },
  {
    icon: "💄",
    name: "Belleza",
    subOptions: [
      { name: "Belleza", link: "/belleza" },
      { name: "Cremas", link: "/crema" },
      { name: "Maquillaje", link: "/maquillaje" },
      { name: "Perfume", link: "/perfume" },
    ],
  },
  {
    icon: "🛋️",
    name: "Muebles",
    subOptions: [
      { name: "Muebles", link: "/mueble" },
      { name: "Mesa", link: "/mesa" },
      { name: "Silla", link: "/silla" },
      { name: "Sofá", link: "/sofa" },
    ],
  },
];

function MenuDropdown({ isVisible }) {
  return (
    <div className={`menu-dropdown ${isVisible ? "visible" : ""}`}>
      {categories.map((category, index) => (
        <div key={index}>
          <span className="icon">{category.icon}</span>
          <span>{category.name}</span>
          <div className="sub-options">
            {category.subOptions.map((subOption, subIndex) => (
              <div key={subIndex}>
                <a href={subOption.link}>{subOption.name}</a>
              </div>
            ))}
          </div>
        </div>
      ))}
    </div>
  );
}

function TopBar() {
  const [menuVisible, setMenuVisible] = useState(false);
  const [stateLogin, setStateLogin] = useState(false);

  useEffect(() => {
    setStateLogin(localStorage.getItem("isAuthenticated") === 'true');
  }, []);

  const toggleMenu = () => setMenuVisible((prev) => !prev);

  return (
    <div className="top-bar">
      <div className="menu">
        <a href="/" className="inicio">
          <div className="inicio-box">Ripley :v</div>
        </a>
        <span className="separator">|</span>
        <button className="menu-button" onClick={toggleMenu}>
          &#9776;
          <span> Menú</span>
        </button>
        <MenuDropdown isVisible={menuVisible} />
      </div>

      <div className="search-bar">
        <input type="text" placeholder="Buscar Productos" />
        <button>🔍</button>
      </div>

      <div className="right-options">
        {stateLogin ? 
          (<a href="/user">Ver cuenta</a>) : 
          (<a href="/login">¡Hola! Inicia sesión</a>)
        }
        <a href="/cart" className="cart-icon">
          🛒
        </a>
      </div>
    </div>
  );
}

export default function App() {
  return <TopBar />;
}
