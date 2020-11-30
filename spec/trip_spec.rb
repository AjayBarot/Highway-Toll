require 'rspec'
require './lib/trip'

describe Trip do
  let(:trip) { Trip.new("Trip Ajay 07:15 07:45 17.3".split) }

  it 'calculates trip time' do
    expect(trip.calculate_time('03:21', '09:01').round).to eq(6.0)
  end
end