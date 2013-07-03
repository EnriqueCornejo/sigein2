class CreateResolutionGroups < ActiveRecord::Migration
  def change
    create_table :resolution_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
