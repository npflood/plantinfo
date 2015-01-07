ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end
    div class: "blank_slate_container", id: "main" do
        span class: "blank_slate" do
            h3 "Welcome to the ECHO Plant Information Workcenter"
            h4 do
                a(href: "https://s3.amazonaws.com/docs.echocommunity.org/Plant+Information+Sheets/Plant+Info+Sheets.zip") do
                    "Download The Plant Information Sheet Files"
                end
            end
            h4 do
                a(href: "/admin/plants") do
                    "Go To Plant Information Sheet Entry Form"
                end
            end
            small "For help with this system please contact Nate Flood at 239-823-7316."
        end
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
