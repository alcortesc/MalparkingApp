class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :tipo_documento
      t.string :numero_documento
      t.string :ciudad
      t.string :correo_electronico
      t.string :genero
      t.integer :celular

      t.timestamps
    end
  end
end
