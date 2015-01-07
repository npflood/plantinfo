ActiveAdmin.register Plant do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :english_common_name, :other_common_names, :latin_name, :family_names, :description, :origin, :uses, :cultivation, :harvesting_and_seed_production, :pests_and_diseases, :cooking_and_nutrition

  index do
    column "Name", :english_common_name
    column "Latin Name", :latin_name
    actions
  end


end
