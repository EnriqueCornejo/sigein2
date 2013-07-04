class Task < ActiveRecord::Base
  attr_accessible :description, :name

  validates_presence_of :name
  validates_presence_of :description
end
