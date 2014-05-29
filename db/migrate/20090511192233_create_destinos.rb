class CreateDestinos < ActiveRecord::Migration
  def self.up
    create_table :destinos do |t|
      t.string :indicativo
      t.string :bloque
      t.string :localidad
      t.string :clave_tasacion
      t.float :costo

      t.timestamps
    end
  end

  def self.down
    drop_table :destinos
  end
end
