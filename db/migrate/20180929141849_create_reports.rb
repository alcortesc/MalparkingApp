class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :descripcion_denuncia
      t.string :tipo_denuncia
      t.string :direccion_denuncia
      t.string :envio_notificacion

      t.timestamps
    end
  end
end
