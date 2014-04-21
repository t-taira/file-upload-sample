class Dog < ActiveRecord::Base
  dragonfly_accessor :photo

  validates :name, :presence => true
  validates :age, :presence => true
end
