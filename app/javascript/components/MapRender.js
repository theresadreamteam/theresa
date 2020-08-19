import React from "react";
import PropTypes from "prop-types";
import { Map, GoogleApiWrapper } from 'google-maps-react';

class MapRender extends React.Component {
  render () {
    return (
      <div>
        <h1>Hello {this.props.name}, </h1>
        <h3>Wow! This is a Map!</h3>
        <Map
          google={this.props.google}
          zoom={8}
          style={mapStyles}
          initialCenter={{ lat: 47.444, lng: -122.176}}
        />
      </div>
    );
  }
}

MapRender.propTypes = {
  name: PropTypes.string
};

export default MapRender;