class AddStateInNews < ActiveRecord::Migration[5.0]
  def change
  add_column :news, :state, :boolean, :default => false
  end
end
