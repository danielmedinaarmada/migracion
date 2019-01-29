class AddTomadorAsegurado < ActiveRecord::Migration[5.2]
  def up
    add_column :polizas, :CI_Tomador, :string
    add_column :polizas, :CI_Asegurado, :string
  end

  def down
    remove_column  :polizas, :CI_Tomador
    remove_column  :polizas, :CI_Asegurado
  end
end
