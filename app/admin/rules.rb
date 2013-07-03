ActiveAdmin.register Rule do

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.has_many :rule_values do |g|
        g.input :category
        g.input :categorical_value
        g.input :numerical_value
      end
    end
    f.actions
  end
  
  show do
    attributes_table do
      row :name
    end
      panel "Values" do
      table_for rule.rule_values do
        column :category
        column :categorical_value
        column :numerical_value
      end
    end
  end
end
