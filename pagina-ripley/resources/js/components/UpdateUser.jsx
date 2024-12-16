import React, { useState, useEffect } from "react";
import axios from "axios";
import "../css/login.css";

const EditUser = () => {
  const [nombres, setNombres] = useState("");
  const [apellidos, setApellidos] = useState("");
  const [genero, setGenero] = useState("");
  const [nacimiento, setNacimiento] = useState("");
  const [telefono, setTelefono] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  // Fetch user data on component mount
  useEffect(() => {
    const fetchUserData = async () => {
      try {
        const response = await axios.post("/api/user/mininformation");
        const userInfo = response.data.information;

        if (userInfo) {
          setNombres(userInfo[0].nombres || "");
          setApellidos(userInfo[0].apellidos || "");
          setGenero(userInfo[0].genero || "");
          setNacimiento(userInfo[0].nacimiento || "");
          setTelefono(userInfo[0].telefono || "");
        }
      } catch (error) {
        setErrorMessage("Error al cargar los datos del usuario.");
      }
    };

    fetchUserData();
  }, []);

  const handleUpdate = async (event) => {
    event.preventDefault();
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await axios.post("/api/update/user", {
        nombres,
        apellidos,
        genero,
        nacimiento,
        telefono,
      });

      if (response.status === 200) {
        setSuccessMessage("Datos actualizados correctamente.");
      } else {
        setErrorMessage("Error al actualizar los datos del usuario.");
      }

      setTimeout(() => {
          window.location.href = "/user";
        }, 3000);
    } catch (error) {
      setErrorMessage("Ocurrió un error. Verifica los datos e inténtalo de nuevo.");
    }
  };

  return (
    <div className="container">
      <div className="form-title">
        <p>Editar datos del usuario</p>
        <hr></hr>
      </div>
      <div className="form-container">
        {successMessage && <div className="success-message">{successMessage}</div>}
        {errorMessage && <div className="error-message">{errorMessage}</div>}
        <form onSubmit={handleUpdate}>
          <div className="form-group">
            <label htmlFor="nombres"></label>
            <input
              type="text"
              id="nombres"
              value={nombres}
              onChange={(e) => setNombres(e.target.value)}
              required
              placeholder="Nombre*"
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
              placeholder="Apellido*"
            />
          </div>
          <div className="form-group">
            <label htmlFor="genero"></label>
            <input
              type="text"
              id="genero"
              value={genero}
              onChange={(e) => setGenero(e.target.value)}
              required
              placeholder="Género (M/F)*"
              maxLength="1"
            />
          </div>
          <div className="form-group">
            <label htmlFor="nacimiento"></label>
            <input
              type="date"
              id="nacimiento"
              value={nacimiento}
              onChange={(e) => setNacimiento(e.target.value)}
              required
            />
          </div>
          <div className="form-group">
            <label htmlFor="telefono"></label>
            <input
              type="text"
              id="telefono"
              value={telefono}
              onChange={(e) => setTelefono(e.target.value)}
              required
              placeholder="Teléfono*"
              pattern="\d+"
              onInvalid={(e) => e.target.setCustomValidity("El número telefónico debe contener solo números.")}
              onInput={(e) => e.target.setCustomValidity("")}
            />
          </div>
          <button type="submit" className="btn-submit">Actualizar</button>
        </form>
      </div>
    </div>
  );
};

export default EditUser;
