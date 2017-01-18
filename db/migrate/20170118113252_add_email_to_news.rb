class AddEmailToNews < ActiveRecord::Migration[5.0]
  def change
  add_column :news, :email, :string
  end
end
