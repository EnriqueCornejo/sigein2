class AddMagnitudeMethodIdToMagnitudes < ActiveRecord::Migration
  def change
    add_column :magnitudes, :magnitude_method_id, :integer
  end
end
