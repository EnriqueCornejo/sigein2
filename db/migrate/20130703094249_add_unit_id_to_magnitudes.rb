class AddUnitIdToMagnitudes < ActiveRecord::Migration
  def change
    add_column :magnitudes, :unit_id, :integer
  end
end
