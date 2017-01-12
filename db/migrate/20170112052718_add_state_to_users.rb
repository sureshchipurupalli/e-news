class AddStateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :state, :boolean
  end
end
