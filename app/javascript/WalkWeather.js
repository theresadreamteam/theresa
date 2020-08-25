import React from 'react';
import './WalkWeather.css';
import Forecast from "./components/Forecast/Forecast";

function WalkWeather() {
  return (
    <div className="WalkWeather">
      <main>
        <Forecast />
      </main>
    </div>
  );
}

export default WalkWeather;
