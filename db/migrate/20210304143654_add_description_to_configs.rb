class AddDescriptionToConfigs < ActiveRecord::Migration[6.0]
  def change
    add_column :configs, :description, :text
  end
end
