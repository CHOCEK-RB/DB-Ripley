import React, { useState } from "react";
import axios from "axios";
import "../css/login.css";

const AddPayment = () => {
  const [numeroSerie, setNumeroSerie] = useState("");
  const [codigo, setCodigo] = useState("");
  const [fechaCaducidad, setFechaCaducidad] = useState("");
  const [nombres, setNombres] = useState("");
  const [apellidos, setApellidos] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  const handleAddPayment = async (event) => {
    event.preventDefault();
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await axios.post("/api/insert/paymend", {
        numero_serie: parseInt(numeroSerie),
        codigo: parseInt(codigo),
        fecha_caducidad: fechaCaducidad,
        nombres,
        apellidos,
      });

      if (response.data.success) {
        setSuccessMessage("¡Método de pago registrado exitosamente!");
        setNumeroSerie("");
        setCodigo("");
        setFechaCaducidad("");
        setNombres("");
        setApellidos("");

        setTimeout(() => {
          window.location.href = "/user";
        }, 3000);
      } else {
        setErrorMessage("Error al registrar el método de pago. Inténtalo nuevamente.");
      }
    } catch (error) {
      setErrorMessage("Ocurrió un error. Verifica los datos e inténtalo nuevamente.");
      console.error("Error al registrar el método de pago:", error);
    }
  };

  return (
    <div className="container">
      <div className="form-title">
        <p>Agregar Método de Pago</p>
        <hr />
      </div>
      <div className="form-container">
        {successMessage && <div className="success-message">{successMessage}</div>}
        {errorMessage && <div className="error-message">{errorMessage}</div>}
        <form onSubmit={handleAddPayment}>
          <div className="form-group">
            <label htmlFor="numeroSerie"></label>
            <input
              type="text"
              id="numeroSerie"
              value={numeroSerie}
              onChange={(e) => setNumeroSerie(e.target.value)}
              required
              placeholder="Número de Serie*"
              pattern="\d+"
              onInvalid={(e) => e.target.setCustomValidity("Debe ingresar un número válido.")}
              onInput={(e) => e.target.setCustomValidity("")}
            />
          </div>
          <div className="form-group">
            <label htmlFor="codigo"></label>
            <input
              type="text"
              id="codigo"
              value={codigo}
              onChange={(e) => setCodigo(e.target.value)}
              required
              placeholder="Código*"
              pattern="\d+"
              onInvalid={(e) => e.target.setCustomValidity("Debe ingresar un número válido.")}
              onInput={(e) => e.target.setCustomValidity("")}
            />
          </div>
          <div className="form-group">
            <label htmlFor="fechaCaducidad"></label>
            <input
              type="date"
              id="fechaCaducidad"
              value={fechaCaducidad}
              onChange={(e) => setFechaCaducidad(e.target.value)}
              required
              placeholder="Fecha de Caducidad*"
            />
          </div>
          <div className="form-group">
            <label htmlFor="nombres"></label>
            <input
              type="text"
              id="nombres"
              value={nombres}
              onChange={(e) => setNombres(e.target.value)}
              required
              placeholder="Nombre del Titular*"
              maxLength="60"
            />
          </div>
          <div className="form-group">
            <label htmlFor="apellidos"></label>
            <input
              type="text"
              id="apellidos"
              value={apellidos}
              onChange={(e) => setApellidos(e.target.value)}
              required
              placeholder="Apellido del Titular*"
              maxLength="60"
            />
          </div>
          <button type="submit" className="btn-submit">Agregar Método de Pago</button>
        </form>
      </div>
    </div>
  );
};

export default AddPayment;
