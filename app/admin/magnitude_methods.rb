ActiveAdmin.register MagnitudeMethod do
  menu :parent => "Magnitudes"

  show do
    attributes_table :name, :description, :resolution_group
      panel "Magnitudes" do
      table_for magnitude_method.magnitudes do
        column "Name" do |magnitude|
          link_to(magnitude, admin_magnitude_path(magnitude.id))
        end
      end
    end
  end
end
