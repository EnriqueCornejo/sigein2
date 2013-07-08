class Resolution < ActiveRecord::Base
  attr_accessible :name, :resolution, :resolution_group_id, :resolution_group

  belongs_to :resolution_dimension

  def to_s
  	"#{self.name}"
  end
end
