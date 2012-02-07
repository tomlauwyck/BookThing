require 'spec_helper'

describe Book do
  
  before(:each) do
    @attr = { :title => "Inferno", :author => "Dante Alighieri"}
  end
  
  it "should create a new instance when given  valid attributes" do
    Book.create!(@attr)
  end
  
  it "should require a title" do
    no_title_book = Book.new(@attr.merge(:title => ""))
    no_title_book.should_not be_valid
  end
  
  it "should require an author" do
    no_author_book = Book.new(@attr.merge(:author => ""))
    no_author_book.should_not be_valid
  end
end
