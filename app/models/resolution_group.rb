class ResolutionGroup < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :resolutions_attributes, :resolution_dimensions_attributes

  validates_presence_of :name

  has_many :resolution_dimensions, :dependent => :destroy
  has_many :resolutions, :through => :resolution_dimensions

  has_many :magnitude_methods

  accepts_nested_attributes_for :resolution_dimensions
  accepts_nested_attributes_for :resolutions

  def to_s
    "#{self.name}"
  end
end
