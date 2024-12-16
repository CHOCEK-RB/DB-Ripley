import React, { useState } from "react";
import axios from "axios";
import "../css/login.css";

const Register = () => {
  const [nombres, setNombres] = useState("");
  const [apellidos, setApellidos] = useState("");
  const [dni, setDni] = useState("");
  const [telefono, setTelefono] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  const handleRegister = async (event) => {
    event.preventDefault();
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await axios.post("/api/register/administrator", {
        nombres,
        apellidos,
        dni,
        telefono,
        email,
        password,
      });

      if (response.data.success) {
        setSuccessMessage("¡Registro exitoso! Serás redirigido al inicio de sesión.");
        setTimeout(() => {
          window.location.href = "/login";
        }, 3000);
      } else {
        setErrorMessage("Registro fallido, intentalo denuevo mas tarde.");
      }
    } catch (error) {
      setErrorMessage("Ocurrió un error en el registro. Verifica tus datos e inténtalo de nuevo.");
    }
  };

  return (
    <div className="container">
      <div className="form-title">
         <p>Crear cuenta</p>
         <hr></hr>
      </div>
      <div className="form-container">
        {successMessage && <div className="success-message">{successMessage}</div>}
        {errorMessage && <div className="error-message">{errorMessage}</div>}
        <div className="description">
          <p className="description-title">Registro para personal Administrativo</p>
        </div>
        <form onSubmit={handleRegister}>
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
            <label htmlFor="dni"></label>
            <input
              type="text"
              id="dni"
              value={dni}
              onChange={(e) => setDni(e.target.value)}
              required
              placeholder="DNI*"
              pattern="\d+"
              onInvalid={(e) => e.target.setCustomValidity("El DNI debe contener solo números.")}
              onInput={(e) => e.target.setCustomValidity("")}
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
          <div className="form-group">
            <label htmlFor="email"></label>
            <input
              type="email"
              id="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
              placeholder="Correo Electrónico*"
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
              minLength="8"
            />
          </div>
          <button type="submit" className="btn-submit">Registrarse</button>
          <div className="change">
            <p>¿Ya tienes cuenta?</p>
            <a href="/login">Iniciar sesion</a>
          </div>
        </form>
      </div>
    </div>
  );
};

export default Register;
