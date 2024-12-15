import React from "react";
import { useNavigate } from "react-router-dom";
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

    return <button onClick={handleLogout}>Cerrar Sesión</button>;
};

export default LogoutButton;
