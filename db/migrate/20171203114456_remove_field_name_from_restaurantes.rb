class RemoveFieldNameFromRestaurantes < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurantes, :cardapio, :string
  end
end
