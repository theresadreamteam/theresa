import React, { useState } from 'react';
import Conditions from '../Conditions/Conditions';
import classes from './Forecast.module.css';

const Forecast = () => {
  let [city, setCity] = useState('');
  let [unit, setUnit] = useState('metric');
  let [lon, setLon] = useState('');
  let [lat, setLat] = useState('');
  let [responseObj, setResponseObj] = useState({});
  let [error, setError] = useState(false);
  let [loading, setLoading] = useState(false);

  const uriEncodedCity = encodeURIComponent(city);

  function getForecast(e) {
    e.preventDefault();

    setError(false);
    setResponseObj({});

    setLoading(true);

    fetch(`https://community-open-weather-map.p.rapidapi.com/weather?lat=${lat}&lon=${lon}&units=${unit}`, {
      "method": "GET",
      "headers": {
        "x-rapidapi-host": "community-open-weather-map.p.rapidapi.com",
        "x-rapidapi-key": "WEATHER_API"
      }
    })
      .then(response => response.json())
      .then(response => {
        if (response.cod !== 200) {
          throw new Error()
        }

        setResponseObj(response);
        setLoading(false);
      })
      .catch(err => {
        setError(true);
        setLoading(false);
        console.log(err.message);
      });
  }

  return (
    <div>
      <h2>find current weather conditions</h2>
      <form onSubmit={getForecast}>
        <input
          type="number"
          placeholder="enter latitude"
          maxLength="50"
          className={classes.TextInput}
          value={lat}
          onChange={(e) => setLat(e.target.value)}
        />
        <input
          type="number"
          placeholder="enter longitude"
          maxLength="50"
          className={classes.TextInput}
          value={lon}
          onChange={(e) => setLon(e.target.value)}
        />
          <label className={classes.Radio}>
            <input
              type="radio"
              name="units"
              checked={unit === "metric"}
              value="metric"
              onChange={(e) => setUnit(e.target.value)}
              />
              Celcius
          </label>
          <label className={classes.Radio}>
            <input
              type="radio"
              name="units"
              checked={unit === "imperial"}
              value="imperial"
              onChange={(e) => setUnit(e.target.value)}
              />
              Fahrenheit
          </label>
          <button className={classes.Button} type="submit">get forecast</button>
      </form>
      <Conditions 
          responseObj={responseObj}
          error={error}
          loading={loading}
          />
    </div>
  )
}

export default Forecast;
