ActiveAdmin.register MaterialResource, {:sort_order => :name} do
  menu :parent => "Management Objects"

  index do
    selectable_column
    column "Photo" do |obj|
      link_to(image_tag(obj.photo.url(:thumb)), admin_material_resources_path(obj))
    end
    column :name
    column :date_of_purchase
    column :amortization_date
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :date_of_purchase
      row :amortization_date
      row :photo, :label => "Photo" do
        link_to(image_tag(material_resource.photo.url(:medium)), material_resource.photo.url)
      end
    end
    panel "Magnitudes" do
      table_for material_resource.magnitudes do
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
      f.input :date_of_purchase
      f.input :amortization_date
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