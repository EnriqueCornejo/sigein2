class CreateMagnitudeMethods < ActiveRecord::Migration
  def change
    create_table :magnitude_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
