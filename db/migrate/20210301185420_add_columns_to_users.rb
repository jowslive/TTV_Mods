class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :image, :text, null: false
    add_column :users, :view_count, :bigint
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
