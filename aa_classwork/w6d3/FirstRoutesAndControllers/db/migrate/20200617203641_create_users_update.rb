class CreateUsersUpdate < ActiveRecord::Migration[5.2]
  def change
    create_table :users_updates do |t|
      remove_column :users, :email
      remove_column :users, :name
    end
  end
end
