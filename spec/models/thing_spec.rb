require 'spec_helper'

describe Thing do

  let(:short_name) { 'N' }
  let(:shortest_name) { 'NT' }
  let(:long_name) { 'N' * 101 }
  let(:longest_name) { 'N' * 100 }

  let(:valid_name) { 'Name of Thing' }
  let(:valid_description) { 'Description of Thing' }
  let(:long_description) { 'N' * 1001 }

  let(:valid_thing) { Thing.new(name: valid_name, description: valid_description) }

  it 'should be valid' do
    expect(valid_thing).to be_valid
  end

  it 'should be invalid with short_name' do
    expect(Thing.new(name: short_name, description: valid_description)).to_not be_valid
  end

  it 'should be invalid with long_name' do
    expect(Thing.new(name: long_name, description: valid_description)).to_not be_valid
  end

  it 'should be valid with longest_name' do
    expect(Thing.new(name: longest_name, description: valid_description)).to be_valid
  end

  it 'should be valid with shortest_name' do
    expect(Thing.new(name: shortest_name, description: valid_description)).to be_valid
  end

  it 'should be invalid without name' do
    expect(Thing.new(description: valid_description)).to_not be_valid
  end

  it 'should be valid without description' do
    expect(Thing.new(name: valid_name)).to be_valid
  end

  it 'should be invalid with long description' do
    expect(Thing.new(name: valid_name, description: long_description)).to_not be_valid
  end

end
