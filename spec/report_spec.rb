require 'rspec'
require './lib/report'

describe Report do
  let(:report) { Report.new('input.txt') }

  it 'creates a driver' do
    report.parse_line('Driver Ajay')

    expect(report.drivers['Ajay']).to be_a(Driver)
  end

  it 'ignores lines without enough information' do
    expect(report.parse_line('small')).to eq(nil)
  end

  it 'creates a trip for a driver' do
    report.parse_line('Driver Ajay')
    report.parse_line('Trip Ajay 07:15 07:45 17.3')
    
    ajay = report.drivers['Ajay']

    expect(ajay.driver_hash[:trips].size).to eq(1)
  end

  it 'ignores trip for a driver with too slow speed' do
    report.parse_line('Driver Ajay')
    report.parse_line('Trip Ajay 01:15 07:45 1.3')

    ajay = report.drivers['Ajay']

    expect(ajay.driver_hash[:trips].size).to eq(0)
  end
end