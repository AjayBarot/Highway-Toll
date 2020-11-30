# frozen_string_literal: true

require './lib/driver'
require './lib/trip'

class Report
  attr_accessor :drivers

  # 
  # initialize constructor
  # @param name [String] [input file]
  # 
  # @noreturn as its setter method 
  def initialize(input_file)
    if input_file.nil?
      raise 'Must supply input file'
    else
      @file = input_file
    end

    @drivers = {}
  end

  # 
  # parse each line of input 
  # in iteration
  # 
  # Chain method will return
  def process_input_file 
    File.open(@file, 'r') do |f|
      f.each_line do |line|
        parse_line(line)
      end
    end
  end

  # 
  # read each lines input
  # compare and identify the entity
  #
  # @param line [String] [instructions for driver or trip]
  # 
  # @noreturn as its setter method  
  def parse_line(line)
    line_array = line.split
    if line_array.length < 2
      nil
    elsif line_array[0] == 'Driver'
      driver = Driver.new(line_array[1])
      @drivers[driver.driver_hash[:name]] = driver
    elsif line_array[0] == 'Trip'
      driver = @drivers[line_array[1]]
      begin
        driver.add_trip(Trip.new(line_array))
      rescue => e
        p e
      end
    end
  end

  # 
  # Show the output
  # 
  # @return [String] [details will display on the screen]  
  def create_display
    File.open('output.txt', 'w') do |file|
      desc_drivers_data = drivers.sort_by{|_, driver| -driver.driver_hash[:total_distance] }
      desc_drivers_data.each do |_, driver|
        summary = driver.trip_summary
        file.write(summary)
        file.write("\n")
        p summary
      end
    end
  end
end