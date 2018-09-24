class AddPolizaFechaNacimiento < ActiveRecord::Migration[5.2]
  def up
    add_column :polizas, :fecha_nacimiento, :datetime
  end

  def down
    remove_column :polizas, :fecha_nacimiento
  end

end
