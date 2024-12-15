import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import ProductsList from "./components/ProductList";
import LogoutTemp from "./components/LogoutTemp";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <ProductsList />
    <LogoutTemp />
  </BrowserRouter>
);
