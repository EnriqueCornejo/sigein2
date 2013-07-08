class AddNameToResolutionDimension < ActiveRecord::Migration
  def change
    add_column :resolution_dimensions, :name, :string
  end
end
