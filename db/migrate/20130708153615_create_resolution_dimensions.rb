class CreateResolutionDimensions < ActiveRecord::Migration
  def change
    create_table :resolution_dimensions do |t|
      t.integer :resolution_group_id

      t.timestamps
    end
  end
end
