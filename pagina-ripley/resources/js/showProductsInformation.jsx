import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import Bar from "./components/slideBar";
import InformationProducts from "./components/ProductInformation";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Bar />
    <InformationProducts />
  </BrowserRouter>
);
