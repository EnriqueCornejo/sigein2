ActiveAdmin.register Task do
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.has_many :task_material_resources do |g|
        g.input :material_resource
      end
    end
    f.actions
  end
end
