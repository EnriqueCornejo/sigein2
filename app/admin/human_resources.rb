ActiveAdmin.register HumanResource, {:sort_order => :name} do
  menu :parent => "Management Objects"

  index do
    selectable_column
    column "Photo" do |obj|
      link_to(image_tag(obj.photo.url(:thumb)), admin_human_resources_path(obj))
    end
    column :name
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :photo, :label => "Photo" do
        link_to(image_tag(human_resource.photo.url(:medium)), human_resource.photo.url)
      end
    end
    panel "Magnitudes" do
      table_for human_resource.magnitudes do
        column "Name" do |magnitude|
          link_to(magnitude, admin_magnitude_path)
        end
        column "Importance" do |magnitude|
          magnitude.importance
        end
        column "Method" do |magnitude|
          link_to(magnitude.magnitude_method, admin_magnitude_method_path(magnitude.magnitude_method.id))
        end
        column "Resolution Group" do |magnitude|
          link_to(magnitude.magnitude_method.resolution_group, admin_resolution_group_path(magnitude.magnitude_method.resolution_group.id))
        end
      end
    end
  end

  form :html => { :enctype => "multipart/form-data"} do |f|
    f.inputs "Details" do
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:medium))
      f.input :name
      f.has_many :magnitudes do |g|
        g.input :name
        g.input :unit
        g.input :magnitude_method
        g.input :importance
      end
    end
    f.actions
  end


end


