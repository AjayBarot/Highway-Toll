require 'rspec'
require './lib/driver'
require './lib/trip'

describe Driver do
  let(:driver) { Driver.new('Ajay') }
  let(:trip_1) { Trip.new('Trip Ajay 07:15 07:45 17.3'.split) }
  let(:trip_2) { Trip.new('Trip Ajay 11:11 13:13 22.2'.split) }

  it 'creates driver summary' do
    driver.add_trip(trip_1)
    driver.add_trip(trip_2)

    total_distance = trip_1.distance + trip_2.distance
    total_time     = trip_1.time     + trip_2.time

    expect(total_distance.round).to eq(40)
    expect(total_time.round).to eq(3)
    expect(driver.trip_summary).to eq('Ajay: 40 miles @ 16 mph')
  end
end