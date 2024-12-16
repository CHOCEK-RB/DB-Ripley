import React, { useState } from "react";
import axios from "axios";
import "../css/login.css";

const RegisterAddress = () => {
  const [pais, setPais] = useState("");
  const [departamento, setDepartamento] = useState("");
  const [direccion, setDireccion] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  const handleRegisterAddress = async (event) => {
    event.preventDefault();
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await axios.post("/api/insert/address", {
        pais,
        departamento,
        direccion,
      });

      if (response.data.success) {
        setSuccessMessage("¡Dirección registrada exitosamente!");
        setPais("");
        setDepartamento("");
        setDireccion("");

        setTimeout(() => {
          window.location.href = "/user";
        }, 3000);
      } else {
        setErrorMessage("No se pudo registrar la dirección. Inténtalo de nuevo más tarde.");
      }
    } catch (error) {
      setErrorMessage("Ocurrió un error al registrar la dirección. Verifica los datos e inténtalo de nuevo.");
    }
  };

  return (
    <div className="container">
      <div className="form-title">
        <p>Registrar Dirección</p>
        <hr />
      </div>
      <div className="form-container">
        {successMessage && <div className="success-message">{successMessage}</div>}
        {errorMessage && <div className="error-message">{errorMessage}</div>}
        <form onSubmit={handleRegisterAddress}>
          <div className="form-group">
            <label htmlFor="pais"></label>
            <input
              type="text"
              id="pais"
              value={pais}
              onChange={(e) => setPais(e.target.value)}
              required
              placeholder="País*"
              maxLength="20"
            />
          </div>
          <div className="form-group">
            <label htmlFor="departamento"></label>
            <input
              type="text"
              id="departamento"
              value={departamento}
              onChange={(e) => setDepartamento(e.target.value)}
              required
              placeholder="Departamento*"
              maxLength="20"
            />
          </div>
          <div className="form-group">
            <label htmlFor="direccion"></label>
            <input
              type="text"
              id="direccion"
              value={direccion}
              onChange={(e) => setDireccion(e.target.value)}
              required
              placeholder="Dirección*"
              maxLength="100"
            />
          </div>
          <button type="submit" className="btn-submit">Registrar Dirección</button>
        </form>
      </div>
    </div>
  );
};

export default RegisterAddress;
