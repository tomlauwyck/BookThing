class Book < ActiveRecord::Base
  attr_accessible :title, :author
  
  validates :title, :presence => true, :length => { :maximum => 100}
  validates :author, :presence => true, :length => { :maximum => 100}
end
