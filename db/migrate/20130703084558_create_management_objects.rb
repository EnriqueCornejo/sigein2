class CreateManagementObjects < ActiveRecord::Migration
  def change
    create_table :management_objects do |t|
      t.string :name

      t.timestamps
    end
  end
end
