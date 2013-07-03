ActiveAdmin.register ManagementObject, {:sort_order => :name} do


  index do
    selectable_column
    column "Photo" do |obj|
      link_to(image_tag(obj.photo.url(:thumb)), admin_management_object_path(obj))
    end
    column :name
    column :object_type
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :object_type
      row :photo, :label => "Photo" do
        link_to(image_tag(management_object.photo.url(:medium)), management_object.photo.url)
      end
    end
      panel "Magnitudes" do
      table_for management_object.magnitudes do
        column "Name" do |magnitude|
          link_to(magnitude, admin_magnitude_path)
        end
        column "Method" do |magnitude|
          link_to(magnitude.magnitude_method, admin_magnitude_method_path(magnitude.magnitude_method.id))
        end
      end
    end
  end

  form :html => { :enctype => "multipart/form-data"} do |f|
    f.inputs "Details" do
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:medium))
      f.input :name
      f.input :object_type
      f.has_many :magnitudes do |g|
        g.input :name
        g.input :unit
        g.input :magnitude_method
      end
    end
    f.actions
  end


end
