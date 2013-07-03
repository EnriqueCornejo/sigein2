class AddResolutionGroupIdToMagnitudeMethods < ActiveRecord::Migration
  def change
    add_column :magnitude_methods, :resolution_group_id, :integer
  end
end
