class CreateTaskMaterialResources < ActiveRecord::Migration
  def change
    create_table :task_material_resources do |t|
      t.integer :task_id
      t.integer :material_resource_id

      t.timestamps
    end
  end
end
