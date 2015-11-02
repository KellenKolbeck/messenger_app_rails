class ChangeClientNumberToString < ActiveRecord::Migration
  def change
    change_column :clients, :number, :string
  end
end
