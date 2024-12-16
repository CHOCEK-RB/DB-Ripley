import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import UpdateUser from "./components/UpdateUser";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <UpdateUser />
  </BrowserRouter>
);
