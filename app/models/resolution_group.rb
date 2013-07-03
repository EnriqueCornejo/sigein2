class ResolutionGroup < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :resolutions, :dependent => :destroy

  has_many :magnitude_methods
end
