ActiveAdmin.register ManagementObject, {:sort_order => :name} do
  config.batch_actions = false

  filter :name
  filter :type, :as => :select, :collection => {
    "Species" => "Specie",
    "Habitats" => "Habitat",
    "Material Resources" => "MaterialResource",
    "Human Resources" => "HumanResource"
  }

  # Mejor index as grid

  index :as => :grid, :columns => 5 do |mo|
    case mo.type
      when "Specie"            then h3 link_to(mo, admin_species_path(mo.id))
      when "Habitat"           then h3 link_to(mo, admin_habitat_path(mo.id))
      when "HumanResource"     then h3 link_to(mo, admin_human_resource_path(mo.id))
      when "MaterialResource"  then h3 link_to(mo, admin_material_resource_path(mo.id))
    end
    div do
      case mo.type
        when "Specie"            then link_to(image_tag(mo.photo.url(:thumb)), admin_species_path(mo.id))
        when "Habitat"           then link_to(image_tag(mo.photo.url(:thumb)), admin_habitat_path(mo.id))
        when "HumanResource"     then link_to(image_tag(mo.photo.url(:thumb)), admin_human_resource_path(mo.id))
        when "MaterialResource"  then link_to(image_tag(mo.photo.url(:thumb)), admin_material_resource_path(mo.id))
      end
    end
  end

  show do
    attributes_table do
      row :name
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
      f.has_many :magnitudes do |g|
        g.input :name
        g.input :unit
        g.input :magnitude_method
      end
    end
    f.actions
  end


end
