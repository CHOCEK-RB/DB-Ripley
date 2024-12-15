import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import AccessLogin from "./components/Login";
import Home from "./components/ProductList";

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/login" element={<AccessLogin />} />
      </Routes>
    </Router>
  );
};

export default App;
