class ValorationCategory < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :object_categories, :dependent => :destroy
  has_many :management_objects, :through => :object_categories

  has_many :rules
end
