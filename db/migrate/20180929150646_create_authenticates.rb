class CreateAuthenticates < ActiveRecord::Migration[5.0]
  def change
    create_table :authenticates do |t|
      t.references :user, foreign_key: true
      t.references :register, foreign_key: true
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
