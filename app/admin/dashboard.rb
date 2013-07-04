# -*- encoding : utf-8 -*-

ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do

      column do
        panel "Acciones habituales" do
          ul do
            li link_to("Inventario", admin_management_objects_path)
          end
        end
      end


      column do
        panel "Objetos añadidos recientemente" do
          ul do
            ManagementObject.last(5).map do |obj|
              li link_to(obj.name, admin_management_object_path(obj))
            end
          end
        end
      end


      column do
        panel "Info" do
          para "Bienvenido a SIGEIN 2.0 - Peluso"
        end
      end


    end
  end # content
end
