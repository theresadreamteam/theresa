import React from 'react';
import { render } from '@testing-library/react';
import WalkWeather from './WalkWeather';

test('renders learn react link', () => {
  const { getByText } = render(<WalkWeather />);
  const linkElement = getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
