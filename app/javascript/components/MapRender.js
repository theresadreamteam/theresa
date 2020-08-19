import React from "react";
import PropTypes from "prop-types";

class MapRender extends React.Component {
  render () {
    return (
      <div>
        <h1>Hello {this.props.name}, </h1>
        <h3>Wow! This is a Map!</h3>
      </div>
    );
  }
}

MapRender.propTypes = {
  name: PropTypes.string
};

export default MapRender;