import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import PaginatedProducts from "./components/ProductList";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <PaginatedProducts />
  </BrowserRouter>
);
