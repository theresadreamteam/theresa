import React from "react";
import PropTypes from "prop-types";
import { Map, GoogleApiWrapper } from 'google-maps-react';
const googlemapkey = process.env.REACT_APP_GOOGLE_MAP_KEY;
console.log(process.env)
console.log(googlemapkey)

class MapRender extends React.Component {
  render () {
    return (
      <div>
        <h1>Hello {this.props.name}, </h1>
        <h3>Wow! This is a Map!</h3>
        <Map
          google={this.props.google}
          zoom={8}
          class = "mapStyles"
          initialCenter={{ lat: 51.51736, lng: -0.073328}}
        />
      </div>
    );
  }
}

MapRender.propTypes = {
  name: PropTypes.string
};

export default GoogleApiWrapper ({
  apiKey: 'AIzaSyBKnQLJroZD38eJhiGpdrhIlmZCynrg9l4'
})(MapRender);