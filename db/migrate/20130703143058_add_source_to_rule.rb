class AddSourceToRule < ActiveRecord::Migration
  def change
    add_column :rules, :source, :string
  end
end
