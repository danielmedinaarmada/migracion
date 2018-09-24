class AddPolizaExcepcion < ActiveRecord::Migration[5.2]
  def up
    add_column :polizas, :excepcion, :boolean , :default => 0
  end

  def down
    remove_column :polizas, :excepcion
  end

end
