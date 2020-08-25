import React from 'react';
import classes from './Conditions.module.css'

const conditions = (props) => {
  return (
    <div className={classes.Wrapper}>
      {props.error && <small>please enter a valid city.</small>}

      {props.loading && <div>loading ...</div>}

      {props.responseObj.cod === 200 ? 
        <div>
          <p><strong>{props.responseObj.name}</strong></p>
          <p>it is currently {Math.round(props.responseObj.main.temp)}
          degrees out with {props.responseObj.weather[0].description}.</p>
        </div> 
      : null
      }
    </div>
  )
}

export default conditions;