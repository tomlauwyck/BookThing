require 'spec_helper'

describe Book do
  
  before(:each) do
    @attr = { :title => "Inferno", :author => "Dante Alighieri"}
  end
  
  it "should create a new instance when given  valid attributes" do
    Book.create!(@attr)
  end
end
