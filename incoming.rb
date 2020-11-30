# frozen_string_literal: true

require './lib/report'

report = Report.new(ARGV[0])
report.process_input_file
report.create_display