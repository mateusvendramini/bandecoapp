class RemoveColumn < ActiveRecord::Migration[5.1]
  def down
  	remove_column :restaurantes, :cardapio
  end
end
