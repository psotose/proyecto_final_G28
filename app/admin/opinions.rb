ActiveAdmin.register Opinion do
  actions :all, except: [:new, :create]
  controller do
    nested_belongs_to :real_estate_broker, optional:true
  end
  belongs_to :user, optional:true  
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :rating, :comment, :user_id, :real_estate_broker_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:rating, :comment, :user_id, :real_estate_broker_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # index do
  #   #selectable_column
  #   column :id,
  #   column :rating,
  #   column :comment,
  #   column :user_id,
  #   column :real_estate_broker
  #   column :created_at do |user|
  #     time_ago_in_words(user.created_at)
  #   end
  #   column :updated_at do |user|
  #     time_ago_in_words(user.updated_at)
  #   end
  #   actions
  # end  
end
