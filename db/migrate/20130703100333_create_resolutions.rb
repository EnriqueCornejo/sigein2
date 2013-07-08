class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.string :name
      t.float :resolution
      t.integer :resolution_dimension_id

      t.timestamps
    end
  end
end
