class ResolutionDimension < ActiveRecord::Base
  attr_accessible :resolution_group_id, :resolution_group, :name
  attr_accessible :resolutions_attributes

  belongs_to :resolution_group

  has_many :resolutions, :dependent => :destroy

  accepts_nested_attributes_for :resolutions

  def to_s
  	"#{self.name}"
  end
end
