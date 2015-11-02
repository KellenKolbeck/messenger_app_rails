class AddNameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :name, :string
    add_column :clients, :number, :integer
  end
end
