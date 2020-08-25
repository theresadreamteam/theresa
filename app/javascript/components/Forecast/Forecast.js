import React, { useState } from 'react';
import Conditions from '../Conditions/Conditions';
import classes from './Forecast.module.css';

const Forecast = () => {
  let [city, setCity] = useState('');
  let [unit, setUnit] = useState('metric');
  let [responseObj, setResponseObj] = useState({});
  let [error, setError] = useState(false);
  let [loading, setLoading] = useState(false);

  const uriEncodedCity = encodeURIComponent(city);

  function getForecast(e) {
    e.preventDefault();
    
    if (city.length === 0) {
      return setError(true);
    }

    setError(false);
    setResponseObj({});

    setLoading(true);

    

    fetch(`https://community-open-weather-map.p.rapidapi.com/weather?units=${unit}&q=${uriEncodedCity}`, {
      "method": "GET",
      "headers": {
        "x-rapidapi-host": "community-open-weather-map.p.rapidapi.com",
        "x-rapidapi-key": "e97f06650amshab8661718d84320p1baa9bjsn88c24f2a99b0"
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
          type="text"
          placeholder="enter city"
          maxLength="50"
          className={classes.TextInput}
          value={city}
          onChange={(e) => setCity(e.target.value)}
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
