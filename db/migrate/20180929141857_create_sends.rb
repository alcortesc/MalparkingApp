class CreateSends < ActiveRecord::Migration[5.0]
  def change
    create_table :sends do |t|
      t.references :notification, foreign_key: true
      t.references :report, foreign_key: true
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
