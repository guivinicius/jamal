ActiveAdmin.register AdminUser do
  permit_params :name, :uid, :email, :password, :password_confirmation

  menu :parent => 'Users', :priority => 3

  index do
    column :name
    column :uid
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count

    default_actions
  end

  filter :name
  filter :uid
  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :uid
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
