class AddUserNameToNews < ActiveRecord::Migration[5.0]
  def change
   add_column :news, :user_name, :string
  end
end
