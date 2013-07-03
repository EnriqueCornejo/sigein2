class MagnitudeMethod < ActiveRecord::Base
  attr_accessible :name, :description, :resolution_group, :resolution_group_id

  has_many :magnitudes, :dependent => :destroy

  belongs_to :resolution_group

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :description
  validates_presence_of :resolution_group

  def to_s
    "#{self.name}"
  end
end
