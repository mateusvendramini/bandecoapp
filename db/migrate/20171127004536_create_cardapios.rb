class CreateCardapios < ActiveRecord::Migration[5.1]
  def change
    create_table :cardapios do |t|
      t.integer :id_restaurante
      t.text :conteudo
      t.string :dia_semana

      t.timestamps
    end
  end
end
