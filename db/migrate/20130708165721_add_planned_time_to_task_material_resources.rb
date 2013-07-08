class AddPlannedTimeToTaskMaterialResources < ActiveRecord::Migration
  def change
    add_column :task_material_resources, :planned_time, :float
  end
end
