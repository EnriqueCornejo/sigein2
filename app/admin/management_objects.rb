ActiveAdmin.register ManagementObject, {:sort_order => :name} do


  index do
    selectable_column
    column :name
    column :object_type
    default_actions
  end

  show do
    attributes_table :name, :object_type
      panel "Magnitudes" do
      table_for management_object.magnitudes do
        column "Name" do |magnitude|
          link_to(magnitude, admin_magnitude_path)
        end
      end
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :object_type
      f.has_many :magnitudes do |g|
        g.input :name
        g.input :unit
      end
    end
    f.actions
  end


end
