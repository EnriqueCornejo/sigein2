ActiveAdmin.register ResolutionGroup do
  show do
    attributes_table :name
      panel "Dimensions" do
        table_for resolution_group.resolution_dimensions do
          column "Name" do |rd|
            link_to(rd, admin_resolution_dimension_path(rd.id))
          end
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

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.has_many :resolution_dimensions do |g|
        g.input :name
        g.has_many :resolutions do |h|
          h.input :name
          h.input :resolution
        end
      end
    end
    f.actions
  end
end
