ActiveAdmin.register ResolutionDimension do
  menu :parent => "Resolution Groups"
	show do
    attributes_table do
      row :name
      row :resolution_group
    end
    panel "Resolutions" do
      table_for resolution_dimension.resolutions do
        column "Name" do |resolution|
          link_to(resolution, admin_resolution_path)
        end
        column "Value" do |resolution|
          link_to(resolution.resolution, admin_resolution_path(resolution.id))
        end
      end
    end
  end
end
