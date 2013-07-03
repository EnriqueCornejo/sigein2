class AddDescriptionToMagnitudeMethods < ActiveRecord::Migration
  def change
    add_column :magnitude_methods, :description, :text
  end
end
