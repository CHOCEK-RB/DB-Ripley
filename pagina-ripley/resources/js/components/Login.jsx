import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import "../css/login.css";

const AccessLogin = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const navigate = useNavigate();

  const verifyLogin = async (event) => {
    event.preventDefault();

    try {
      const response = await axios.post("/api/login", {
        email: email,
        password: password,
      });

      if (response.status === 200) {
      	localStorage.setItem("isAuthenticated", "true");
        window.location.href = "/";
      }
    } catch (error) {
      if (error.response && error.response.status === 422) {
        setError("Credenciales incorrectas. Intenta nuevamente.");
      } else {
        setError("Error en el servidor. Por favor, inténtalo más tarde.");
      }
    }
  };

  return (
    <div className="container">
      <div className="form-title">
       <p>Iniciar Sesión</p>
       <hr></hr>
      </div>
      <div className="form-container">
        <div className="description">
          <p className="description-title">¡Bienvenido a Ripley.com!</p>
          <p className="content">Ingresa tu usuario y contraseña para iniciar sesión</p>
        </div>
        {error && <p className="error-message">{error}</p>}
        <form onSubmit={verifyLogin}>
          <div className="form-group">
            <label htmlFor="email"></label>
            <input
              type="email"
              id="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
              placeholder="Correo*"
            />
          </div>
          <div className="form-group">
            <label htmlFor="password"></label>
            <input
              type="password"
              id="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
              placeholder="Contraseña*"
            />
          </div>
          <button type="submit" className="btn-submit">Iniciar sesion</button>
          <div className="change">
            <p>¿Eres nuevo en Ripley.com?</p>
            <a href="/register">Crear cuenta</a>
          </div>
        </form>
      </div>
    </div>
  );
};

export default AccessLogin;
