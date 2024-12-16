import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import Paymend from "./components/InsertPayment";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Paymend />
  </BrowserRouter>
);
