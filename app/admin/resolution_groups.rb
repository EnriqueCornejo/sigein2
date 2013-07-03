ActiveAdmin.register ResolutionGroup do
  menu :parent => "Resolutions"  

  show do
    attributes_table :name
      panel "Resolutions" do
        table_for resolution_group.resolutions do
          column :name
          column :resolution
        end
      end
      panel "Magnitude Methods" do
        table_for resolution_group.magnitude_methods do
          column "Name" do |mg|
            link_to(mg, admin_magnitude_method_path(mg.id))
          end
        end
      end
    end
  end
