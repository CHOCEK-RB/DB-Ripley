import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import Login from "./components/Login";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Login />
  </BrowserRouter>
);
