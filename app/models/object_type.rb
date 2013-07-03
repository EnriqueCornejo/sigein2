class ObjectType < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :management_objects, :dependent => :destroy
end
