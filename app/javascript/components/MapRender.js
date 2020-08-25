import React from "react";
import PropTypes from "prop-types";
require('dotenv').config();
import { Map, GoogleApiWrapper, Marker, Circle } from 'google-maps-react';
import { Button, ButtonGroup, Container, Row, Col} from 'reactstrap';

class MapRender extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      walks: this.props.walks,
      mapState : {
        latitude: this.props.latitude,
        longitude: this.props.longitude,
        circle: {
          radius: 50000,
          strokeColor: "#FF0000",
          strokeOpacity: 0.6,
          strokeWeight: 1,
          fillColor: "#FF0000",
          fillOpacity: 0.05,
        }
      }
    }
  }

  incrementRadius = () => {
    let tempState = this.state;
    tempState.mapState.circle.radius += 25000;
    this.setState({tempState});
  }

  decreaseRadius = () => {
    let tempState = this.state;
    tempState.mapState.circle.radius -= 25000;
    this.setState({tempState});
  }

  setLocation = () => {
    let tempState = this.state;
    tempState.mapState.longitude = this.props.longitude;
    tempState.mapState.latitude = this.props.latitude;
    this.setState({tempState});
  }

  displayMarkers = () => {
    return this.state.walks.map((walk, index) => {
      return <Marker key={index} id={index} position={{
       lat: walk.latitude,
       lng: walk.longitude
     }}
     onClick={() => this.displayPlace(walk)} />
    })
  }

  displayPlace(walk){
    let tempState = this.state;
    tempState.placeId = walk.id;
    tempState.mapState.latitude = walk.latitude;
    tempState.mapState.longitude = walk.longitude;
    this.setState({tempState});
  }

  render () {
    return (
      <React.Fragment>
        <Container>
          <Row>
            <h1>Hello {this.props.name}, </h1>
            <h3>Wow! This is a Map!</h3>
            <ButtonGroup aria-label="Set Radius">
              <Button onClick={() => this.incrementRadius()}>Increase Drive Time: 15 mins</Button>
              <Button onClick={() => this.decreaseRadius()}>Decrease Drive Time: 15 mins</Button>
            </ButtonGroup>
            <br></br>
            <label>Time in Car </label>
              <input
                type="text"
                name="radius"
                value={this.state.mapState.circle.radius/100000+" hrs"}
                disabled={true}
              />
              <ButtonGroup aria-label="Reset Location">
              <Button onClick={() => this.setLocation()}>Reset Location</Button>
            </ButtonGroup>
          </Row>
          <br></br>
          <Row>
          <Map
            google={this.props.google}
            zoom={8}
            class = "mapStyles"
            initialCenter={{ lat: 51.51736, lng: -0.073328}}
            >

            {this.displayMarkers()}
            <Circle
                  center={{
                    lat: this.state.mapState.latitude,
                    lng: this.state.mapState.longitude
                  }}
                  radius={this.state.mapState.circle.radius}
                  strokeColor={this.state.mapState.circle.strokeColor}
                  strokeOpacity={this.state.mapState.circle.strokeOpacity}
                  strokeWeight={this.state.mapState.circle.strokeWeight}
                  fillColor={this.state.mapState.circle.fillColor}
                  fillOpacity={this.state.mapState.circle.fillOpacity}
                />  
          </Map>
          </Row>
        </Container>
      </React.Fragment>
    );
  }
}

  MapRender.propTypes = {
    name: PropTypes.string,
    latitude: PropTypes.number,
    longitude: PropTypes.number,
    walks: PropTypes.array
  };

  export default GoogleApiWrapper ({
      apiKey: 'AIzaSyBKnQLJroZD38eJhiGpdrhIlmZCynrg9l4'
  })(MapRender);