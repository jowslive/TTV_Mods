class AddDocumentationUrlToBots < ActiveRecord::Migration[6.0]
  def change
    add_column :bots, :documentation_url, :text
  end
end
