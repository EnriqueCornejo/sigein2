ActiveAdmin.register ManagementObject, {:sort_order => :name} do


  index do
    selectable_column
    column :name
    column :object_type
    default_actions
  end


end
