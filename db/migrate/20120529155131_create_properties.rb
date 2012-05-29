class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :nombre
      t.string :num_int
      t.string :num_ext
      t.text :direccion
      t.string :google
      t.boolean :status_renta
      t.boolean :status_oferta
      t.text :comentario
      t.integer :type_id
      t.integer :locality_id
      t.float :precio

      t.timestamps
    end
  end
end
