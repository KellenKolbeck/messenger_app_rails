class RemoveColumnsAccountSidAuthToken < ActiveRecord::Migration
  def change
    remove_column :clients, :account_sid, :string
    remove_column :clients, :auth_token, :string
  end
end
