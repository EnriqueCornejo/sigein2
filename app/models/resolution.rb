class Resolution < ActiveRecord::Base
  attr_accessible :name, :resolution, :resolution_dimension_id, :resolution_dimension

  belongs_to :resolution_dimension

  def to_s
  	"#{self.name}"
  end
end
