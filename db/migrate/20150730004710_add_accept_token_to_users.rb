class AddAcceptTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accept_token, :string
  end
end
