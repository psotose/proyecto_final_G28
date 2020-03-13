ActiveAdmin.register User do
  
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :provider, :uid
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :provider, :uid]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :email, :password
  filter :created_at, as: :date_range
  filter :opinions
  filter :real_estate_brokers
  #filter :picture_attachment

  index do
    column :id
    column :email
    column :name
    column :created_at
    column :member_since do |user|
      time_ago_in_words(user.created_at)
    end
    column "Corredoras", :real_estate_brokers do |user|
      link_to user.real_estate_brokers.count, admin_user_real_estate_brokers_path(user)
    end
    column "Opiniones", :opinions do |user|
      link_to user.opinions.count, admin_user_opinions_path(user)
    end    
    actions
  end

  
  form do |f|
    inputs 'Crear un nuevo usuario' do
    f.input :email
    f.input :password
    #f.input :name
    end
    f.actions
  end

  controller do
    def update
      if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end
  end
end
