class Polizas < ActiveRecord::Migration[5.2]
  def up
    add_column :polizas, :conciliacion, :boolean
    add_column :polizas, :fecha_conciliacion, :datetime
  end

  def down
    remove_column :polizas, :conciliacion
    remove_column :polizas, :fecha_conciliacion
  end
end
