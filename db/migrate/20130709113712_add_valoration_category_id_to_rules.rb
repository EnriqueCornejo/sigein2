class AddValorationCategoryIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :valoration_category_id, :integer
  end
end
