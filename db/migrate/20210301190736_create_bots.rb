class CreateBots < ActiveRecord::Migration[6.0]
  def change
    create_table :bots do |t|
      t.string :name
      t.text :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
