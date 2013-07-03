class CreateMagnitudes < ActiveRecord::Migration
  def change
    create_table :magnitudes do |t|
      t.string  :name
      t.integer :management_object_id

      t.timestamps
    end
  end
end
