import React, { useState, useEffect } from "react";
import axios from "axios";
import "../css/user.css";

const ShowUser = () => {
  const [userInfo, setUserInfo] = useState([]);
  const [userAddress, setUserAddress] = useState([]);
  const [userPay, setUserPay] = useState([]);
  const [error, setError] = useState(null);

  const getInformation = async () => {
    try {
      const response = await axios.post('api/user/information', {});
      const { information, address, pay } = response.data;
      setUserInfo(information);
      setUserAddress(address);
      setUserPay(pay);
    } catch (error) {
      console.error("Error al obtener los datos de la API usuario", error);
      setError("No se pudo cargar la información del usuario.");
    }
  };

  const handleDeleteAddress = async (index) => {
    const addressToDelete = userAddress[index];
    try {
      await axios.post('/api/delete/address', {
        pais: addressToDelete.paid,
        departamento: addressToDelete.departamento,
        direccion: addressToDelete.direccion,
      });
      alert("Eliminacion exitosa.");
      setUserAddress(userAddress.filter((_, i) => i !== index));
    } catch (error) {
      console.error("Error al eliminar dirección", error);
      alert("No se pudo eliminar la dirección.");
    }
  };

  const handleDeletePayment = async (index) => {
    const paymentToDelete = userPay[index];
    try {
      await axios.post('/api/delete/paymend', {
        numero_serie: paymentToDelete.serie,
      });
      alert("Eliminacion exitosa.");
      setUserPay(userPay.filter((_, i) => i !== index));
    } catch (error) {
      console.error("Error al eliminar método de pago", error);
      alert("No se pudo eliminar el método de pago.");
    }
  };

  useEffect(() => {
    getInformation();
  }, []);

  const handleNullValue = (value) => {
    return value ? value : "No disponible";
  };

  return (
    <div className="user-container">
      <h2>Información del Usuario</h2>
      {error && <p className="error-message">{error}</p>}

      <div className="info-section">
        <h3>Información Personal</h3>
        <table className="info-table">
          <tbody>
            {userInfo.map((info, index) => (
              <React.Fragment key={index}>
                <tr>
                  <th>Nombre:</th>
                  <td>{handleNullValue(info.nombres)}</td>
                </tr>
                <tr>
                  <th>Apellidos:</th>
                  <td>{handleNullValue(info.apellidos)}</td>
                </tr>
                <tr>
                  <th>DNI:</th>
                  <td>{handleNullValue(info.dni)}</td>
                </tr>
                <tr>
                  <th>Fecha de Nacimiento:</th>
                  <td>{handleNullValue(info.nacimiento)}</td>
                </tr>
                <tr>
                  <th>Teléfono:</th>
                  <td>{handleNullValue(info.telefono)}</td>
                </tr>
              </React.Fragment>
            ))}
          </tbody>
        </table>
      </div>

      <a href="/user/update/information">
        <div className="insert-conteiner">
            <p>Actualizar datos</p>
        </div>
      </a>

      <div className="info-section">
        <h3>Direcciones</h3>
        {userAddress.length > 0 ? (
          <div className="info-container">
            {userAddress.map((addr, index) => (
              <div className="item-container" key={index}>
                <div className="information">
                  <p className="title">{addr.direccion}</p>
                  <p className="subtitle">
                    {addr.paid} - {addr.departamento}
                  </p>
                </div>
                <div
                  className="deleter"
                  onClick={() => handleDeleteAddress(index)}
                >
                  <p>Eliminar</p>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <p>Sin contenido</p>
        )}

      <a href="/user/insert/address">
        <div className="insert-conteiner">
            <p>Insertar direccion</p>
        </div>
      </a>
      </div>

      <div className="info-section">
        <h3>Métodos de Pago</h3>
        {userPay.length > 0 ? (
          <div className="info-container">
            {userPay.map((payment, index) => (
              <div className="item-container" key={index}>
                <div className="information">
                  <p className="title">{payment.serie}</p>
                  <p className="subtitle">{payment.fecha}</p>
                </div>
                <div
                  className="deleter"
                  onClick={() => handleDeletePayment(index)}
                >
                  <p>Eliminar</p>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <p>Sin contenido</p>
        )}
      </div>
      <a href="/user/insert/payment">
        <div className="insert-conteiner">
            <p>Insertar metodo de pago</p>
        </div>
      </a>
    </div>
  );
};

export default ShowUser;
