class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_columns :users, :reset_password_token, :reset_password_sent_at
  end
end
