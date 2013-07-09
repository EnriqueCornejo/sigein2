class CreateValorationCategories < ActiveRecord::Migration
  def change
    create_table :valoration_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
