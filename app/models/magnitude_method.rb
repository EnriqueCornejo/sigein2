class MagnitudeMethod < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :magnitudes

  belongs_to :resolution_group

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :description
end
