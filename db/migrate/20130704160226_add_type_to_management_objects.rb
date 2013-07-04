class AddTypeToManagementObjects < ActiveRecord::Migration
  def change
    add_column :management_objects, :type, :string
  end
end
