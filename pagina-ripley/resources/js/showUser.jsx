import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import Bar from "./components/slideBar";
import UserInformation from "./components/UserInformation";
import LogoutTemp from "./components/LogoutTemp";

ReactDOM.createRoot(document.getElementById("react-root")).render(
  <BrowserRouter>
    <Bar />
    <UserInformation />
    <LogoutTemp />
  </BrowserRouter>
);
