# frozen_string_literal: true

class Driver
  attr_accessor :driver_hash

  # 
  # initialize constructor
  # @param name [String] [Driver Name]
  # 
  # @noreturn as its setter method
  def initialize(name)
    @driver_hash = {
      name:           name,
      trips:          Array.new,
      total_time:     0.0,
      total_distance: 0.0,
      avg_speed:      0.0
    }
  end

  # 
  # add the trip details into trips array
  # @param trip [Object] [whole trip object as abstration]
  # 
  # @noreturn as its just setter method
  def add_trip(trip)
    trips_array = @driver_hash[:trips]

    trips_array.push(trip)
    
    @driver_hash[:total_time]     += trip.time
    @driver_hash[:total_distance] += trip.distance
    @driver_hash[:avg_speed]       = @driver_hash[:total_distance] / @driver_hash[:total_time]
  end

  # 
  # display the trip summary of driver
  # 
  # @return [String] [summary of the trip in details]  
  def trip_summary
    if @driver_hash[:total_distance].zero?
      "#{@driver_hash[:name]}: 0 miles"
    else
      "#{@driver_hash[:name]}: #{@driver_hash[:total_distance].round} miles @ #{@driver_hash[:avg_speed].round} mph"
    end
  end
end