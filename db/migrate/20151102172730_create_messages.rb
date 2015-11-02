class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.column :body, :string
      t.column :to, :integer
      t.column :from, :integer
      t.column :media_url, :string

      t.timestamps
    end
  end
end
