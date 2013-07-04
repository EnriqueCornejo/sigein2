class AddImportanceToMagnitudes < ActiveRecord::Migration
  def change
    add_column :magnitudes, :importance, :float
  end
end
