class CreateRuleValues < ActiveRecord::Migration
  def change
    create_table :rule_values do |t|
      t.string :category
      t.string :categorical_value
      t.integer :rule_id
      t.float :numerical_value

      t.timestamps
    end
  end
end
