class TaskMaterialResource < ActiveRecord::Base
  attr_accessible :material_resource_id, :task_id, :planned_time

  validates_presence_of :material_resource, :task, :planned_time

  belongs_to :task
  belongs_to :material_resource
end
