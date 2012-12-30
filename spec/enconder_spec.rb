require 'rspec'
require_relative '../enconder'
describe Enconder do

  let(:encoder) { Enconder.new 'This specification is the specification for a specification'}

  it 'should convert a string into array' do
    encoder.values.should eq([])
    encoder.run_through_elements
  end

  it '#apply conditions' do
    encoder.apply_conditions 'sometext'
    encoder.new_element?('sometext').should be_false
  end
  it '#new_element?' do
    encoder.new_element?('other').should be_true
  end

  it '#add_new_element' do
    encoder.add_new_element 'this'
    encoder.values.should include 'this'
    encoder.index.should include 0
  end

  it 'should update index array if already exist element' do
    encoder.add_new_element 'this'
    encoder.values.should include 'this'
    encoder.index.should include(0)
    encoder.update_index 'this'
    encoder.index.should include(0, 0)
  end

end
