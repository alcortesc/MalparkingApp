class CreateRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :registers do |t|
      t.references :evidence, foreign_key: true
      t.references :vehicle, foreign_key: true
      t.references :user, foreign_key: true
      t.references :report, foreign_key: true
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
