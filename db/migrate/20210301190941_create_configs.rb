class CreateConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :configs do |t|
      t.string :name
      t.text :content
      t.references :bot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
