class ChangeStateInUsers < ActiveRecord::Migration[5.0]
  def change
  change_column :users, :state, :boolean, :default => false
  end
end
