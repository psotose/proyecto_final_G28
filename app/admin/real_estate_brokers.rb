ActiveAdmin.register RealEstateBroker do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :rut, :agent, :mail, :phone, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :rut, :agent, :mail, :phone, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  filter :created_at, as: :date_range
  filter :opinions
  filter :user_id
  filter :name
  filter :rut
  filter :agent
  filter :mail
  
end
