class CreateObjectCategories < ActiveRecord::Migration
  def change
    create_table :object_categories do |t|
      t.integer :management_object_id
      t.integer :valoration_category_id

      t.timestamps
    end
  end
end
