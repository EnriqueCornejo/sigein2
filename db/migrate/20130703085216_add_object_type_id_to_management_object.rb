class AddObjectTypeIdToManagementObject < ActiveRecord::Migration
  def change
    add_column :management_objects, :object_type_id, :int
  end
end
