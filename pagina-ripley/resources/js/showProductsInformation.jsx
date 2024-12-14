import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import InformationProducts from "./components/ProductInformation";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <InformationProducts />
  </BrowserRouter>
);
