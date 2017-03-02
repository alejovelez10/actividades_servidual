class CreateSeguimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :seguimientos do |t|
      t.integer :user_id
      t.integer :actvidad_id
      t.text :descripcion
      t.boolean :s_cierre
      t.integer :porcentaje
      t.boolean :cierre
      t.string :anexo

      t.timestamps
    end
  end
end
