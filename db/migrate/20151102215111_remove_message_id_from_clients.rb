class RemoveMessageIdFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :message_id, :integer
  end
end
