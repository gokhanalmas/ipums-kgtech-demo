ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
  
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Countries" do
          ul do
            Country.all.map do |country|
              li link_to(country.full_name, admin_country_path(country))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to KgTechAdmin."
        end
      end
    end
  end # content
end
