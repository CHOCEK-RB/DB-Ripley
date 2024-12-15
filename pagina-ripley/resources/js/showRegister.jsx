import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import Register from "./components/Register";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Register />
  </BrowserRouter>
);
