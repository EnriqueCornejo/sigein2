ActiveAdmin.register ValorationCategory do
  menu :parent => "Rules"

  show do
    attributes_table do
      row :name
    end
    panel "Rules" do
      table_for valoration_category.rules do
        column "Name" do |regla|
        	auto_link(regla)
        end
      end
    end
  end
end
