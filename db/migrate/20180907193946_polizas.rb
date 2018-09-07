class Polizas < ActiveRecord::Migration[5.2]
  def up
    add_column :polizas, :conciliacion, :boolean , :default => 0
    add_column :polizas, :fecha_conciliacion, :datetime
    add_column :polizas, :anulada, :boolean , :default => 0
    add_column :polizas, :fecha_anulada, :datetime
    add_column :polizas, :migrada, :boolean, :default => 0
    add_column :polizas, :poliza_migrada, :string
    add_column :polizas, :poliza_migrada_fecha, :datetime
    add_column :polizas, :observacion_migracion, :string
  end

  def down
    remove_column :polizas, :conciliacion
    remove_column :polizas, :fecha_conciliacion
    add_column :polizas, :anulada
    add_column :polizas, :fecha_anulada
    remove_column :polizas, :migrada
    remove_column :polizas, :poliza_migrada
    remove_column :polizas, :poliza_migrada_fecha
    remove_column :polizas, :observacion_migracion
  end
end
