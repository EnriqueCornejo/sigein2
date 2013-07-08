class TaskMaterialResource < ActiveRecord::Base
  attr_accessible :material_resource_id, :task_id

  belongs_to :task
  belongs_to :material_resource
end
