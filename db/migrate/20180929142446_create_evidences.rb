class CreateEvidences < ActiveRecord::Migration[5.0]
  def change
    create_table :evidences do |t|
      t.string :nombre_evidencia

      t.timestamps
    end
  end
end
