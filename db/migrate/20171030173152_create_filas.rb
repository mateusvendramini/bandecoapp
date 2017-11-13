class CreateFilas < ActiveRecord::Migration[5.1]
	
  def change

    create_table :filas do |t|
      t.integer :estado_fila
      t.integer :id_restaurante

      t.timestamps
    end
  end
end
