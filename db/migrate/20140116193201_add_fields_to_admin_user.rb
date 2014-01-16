class AddFieldsToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :name, :string
    add_column :admin_users, :uid, :string, :null => false, :default => ""

    add_index :admin_users, :uid
  end
end
