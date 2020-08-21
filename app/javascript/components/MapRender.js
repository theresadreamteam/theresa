import React from "react";
import PropTypes from "prop-types";
require('dotenv').config();
import { Map, GoogleApiWrapper, Marker } from 'google-maps-react';

class MapRender extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      // this returns all the walks in the db
      walks: this.props.walks
    }
  }

  displayMarkers = () => {
    return this.state.walks.map((walk, index) => { 
      return <Marker key={index} id={index} position={{
       lat: parseFloat(walk.latitude),
       lng: parseFloat(walk.longitude)
     }}
     onClick={() => console.log("You clicked me! index: "+index)} />
    })
  }

  render () {
    return (
      <div>
        <h1>Hello {this.props.name}, </h1>
        <h3>Wow! This is a Map!</h3>
        {console.log(this.props.walks)}
        <Map
          google={this.props.google}
          zoom={8}
          class = "mapStyles"
          initialCenter={{ lat: 51.51736, lng: -0.073328}}
          >

          {this.displayMarkers()}
          <Marker position={{ lat: this.props.latitude, lng: this.props.longitude}} />
          
        </Map>
      </div>
    );
  }
}

  MapRender.propTypes = {
    name: PropTypes.string,
    latitude: PropTypes.string,
    longitude: PropTypes.string,
    walks: PropTypes.array
  };

  export default GoogleApiWrapper ({
    apiKey: '-zBb2TWdxqg'
  })(MapRender);