process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

test('renders weather for the walk', () => {
  const walkWeather = new WalkWeather();
  expect(walkWeather).not.toBeNull;
});
