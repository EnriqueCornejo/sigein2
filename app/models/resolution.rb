class Resolution < ActiveRecord::Base
  attr_accessible :name, :resolution, :resolution_group_id, :resolution_group

  belongs_to :resolution_group
end
