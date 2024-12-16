import React from "react";
import { useNavigate } from "react-router-dom";
import "../css/user.css";
import axios from "axios";

const LogoutButton = () => {
    const navigate = useNavigate();

    const handleLogout = async () => {
        try {
            await axios.post('/logout', {});
            localStorage.removeItem("isAuthenticated");
            window.location.href = '/';
        } catch (error) {
            console.error("Error al cerrar sesión:", error);
        }
    };

    return(
        <div className="logout-conteiner">
            <button className="logout" onClick={handleLogout}>Cerrar Sesión</button>
        </div>);
};

export default LogoutButton;
