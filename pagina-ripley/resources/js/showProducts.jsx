import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import ProductsList from "./components/ProductList";
import Bar from "./components/slideBar";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Bar />
    <ProductsList />
  </BrowserRouter>
);
