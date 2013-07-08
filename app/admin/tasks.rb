ActiveAdmin.register Task do
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.has_many :task_material_resources do |g|
        g.input :material_resource
        g.input :planned_time, :hint => "Planned time of use (fractional hours)"
      end
    end
    f.actions
  end

  show do

    attributes_table do
      row :name
      row :description
    end

    panel "Material resources" do
      table_for task.task_material_resources do
        column "Resource" do |tmr|
          link_to(tmr.material_resource, admin_material_resource_path)
        end
        column "Planned time" do |tmr|
          "#{tmr.planned_time} hours"
        end
      end
    end
  end

end
