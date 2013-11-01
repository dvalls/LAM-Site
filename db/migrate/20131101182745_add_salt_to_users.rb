class AddSaltToUsers < ActiveRecord::Migration
  def change
    add_column :users, :salt, :string, limit: 128
  end
end
