class AddDetailsToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :senha_confirmation, :string
  end
end
