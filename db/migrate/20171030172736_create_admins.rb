class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :login
      t.string :senha
      t.string :nome

      t.timestamps
    end
  end
end
