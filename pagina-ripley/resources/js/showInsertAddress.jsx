import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import Address from "./components/InsertAddress";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Address />
  </BrowserRouter>
);
