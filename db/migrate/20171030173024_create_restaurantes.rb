class CreateRestaurantes < ActiveRecord::Migration[5.1]
  has_one :fila
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :cardapio
      t.string :layout
      t.string :mapa
      t.string :foto

      t.timestamps
    end
  end
end
