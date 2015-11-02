class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :account_sid
      t.string :auth_token

      t.timestamps
    end
  end
end
