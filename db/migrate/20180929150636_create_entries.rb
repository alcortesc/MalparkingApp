class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :contrasenia
      t.datetime :fecha_hora_ingreso
      t.datetime :fecha_hora_salida
      t.integer :cantidad_ingresos

      t.timestamps
    end
  end
end
