class CreateIcDestinos < ActiveRecord::Migration
  def self.up
    create_table :ic_destinos do |t|
      t.string :indicativo
      t.float :costo

      t.timestamps
    end
  end

  def self.down
    drop_table :ic_destinos
  end
end
