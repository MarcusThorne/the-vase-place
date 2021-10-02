class ChangePhoneInUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :phone
    add_column :users, :phone, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
