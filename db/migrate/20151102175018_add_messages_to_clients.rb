class AddMessagesToClients < ActiveRecord::Migration
  def change
    add_column :clients, :message_id, :integer
  end
end
