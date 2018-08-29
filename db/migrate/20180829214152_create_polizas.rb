class CreatePolizas < ActiveRecord::Migration[5.2]
  def change
    create_table :polizas do |t|
      t.string :poliza_a_migrar
      t.integer :prima
      t.date :fecha_migracion
      t.string :observacion
      t.string :ip

      t.timestamps
    end
  end
end
