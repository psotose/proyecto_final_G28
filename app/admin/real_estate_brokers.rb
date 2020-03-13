ActiveAdmin.register RealEstateBroker do
  belongs_to :user, optional:true
  permit_params :comment, :user_id 
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
  index do
    column :id
    column :name
    column :rut
    column :agent
    column :mail
    column :phone
    column :created_at do |user|
      time_ago_in_words(user.created_at)
    end
    column :updated_at do |user|
      time_ago_in_words(user.updated_at)
    end
    column :user_id
    column "Opinions", :opinions do |user|
      link_to user.opinions.count, admin_user_opinions_path(user)
    end  
    actions
  end   
  filter :created_at, as: :date_range
  filter :opinions
  filter :user_id
  filter :name
  filter :rut
  filter :agent
  filter :mail
  
end
