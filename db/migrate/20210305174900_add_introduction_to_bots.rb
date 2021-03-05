class AddIntroductionToBots < ActiveRecord::Migration[6.0]
  def change
    add_column :bots, :introduction, :text
  end
end
