# encoding: utf-8

ActiveAdmin.register Resolution do
  menu :parent => "Resolution Groups"

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :resolution_dimension
      #f.input :resolution, :as => :range
      f.input :resolution, {
        :as => :range,
        :in => 0..1,
        :step => 0.1,
        :hint => "<span>Aquí debería verse el número</span>".html_safe
        }
    end
    f.actions
  end
end
