class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :nombre
      t.string :num_ext
      t.text :direccion
      t.string :google
      t.text :comentario
      t.integer :locality_id
      t.timestamps
    end
  end
end
