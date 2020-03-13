ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
  
    columns do
      panel "Usuarios" do
        ul do
          li "Usuarios registrados: #{User.count}"
          li "Administradores registrados: #{AdminUser.count}"
        end
      end
    end

    columns do
      panel "Corredoras" do
        ul do
          li "Corredoras creadas: #{RealEstateBroker.count}"
          li "Opiniones de corredoras:  #{Opinion.joins(:real_estate_broker).group("real_estate_brokers.name").count}" 
        end
      end
    end
    
    columns do
      panel "Opiniones" do
        ul do
          li "Opiniones creadas: #{Opinion.count}"
        end
      end
    end
    panel "Gráfico" do
      render 'shared/chart'
    end
    

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
