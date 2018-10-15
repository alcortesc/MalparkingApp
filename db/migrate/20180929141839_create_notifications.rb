class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :entidad_notificada
      t.string :elemento_notificado
      t.string :estado_notificacion

      t.timestamps
    end
  end
end
