class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :tipo_vehiculo
      t.string :placa

      t.timestamps
    end
  end
end
