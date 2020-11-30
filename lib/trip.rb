# frozen_string_literal: true

class Trip
  attr_reader :distance, :time

  # 
  # initialize constructor
  # @param name [Array] [Input Array]
  # 
  # @noreturn as its setter method
  def initialize(trip_array)
    @time      = calculate_time(trip_array[2], trip_array[3])
    @distance  = trip_array[4].to_f
    average_warning(trip_array[1])
  end

  # 
  # calculate the time as per
  # required format i,e miles per hour
  # @param start_string [String] [start time of trip]
  # @param end_string [String] [end time of trip]
  # 
  # @return [Float] [time in minutes]  
  def calculate_time(start_string, end_string)
    start_array = start_string.split(":")
    end_array   = end_string.split(":")

    #convert to minutes
    start_mins  = start_array[0].to_i * 60.0 + start_array[1].to_i
    end_mins    = end_array[0].to_i * 60.0 + end_array[1].to_i

    ((end_mins - start_mins)/60)
  end

  # 
  # [average_warning description]
  # @param entity_name [String] [Driver name]
  # 
  def average_warning(entity_name)
    avg_speed  = distance / time

    if avg_speed < 5.0 || avg_speed > 100.0
      raise "Input processing: Bad average speed data: #{avg_speed} for #{entity_name}"
    end
  end
end