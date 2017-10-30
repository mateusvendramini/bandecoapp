class CreateDadoInseridos < ActiveRecord::Migration[5.1]
  def change
    create_table :dado_inseridos do |t|
      t.integer :id_fila
      t.string :posicao
      t.string :horario

      t.timestamps
    end
  end
end
