class CreateAutors < ActiveRecord::Migration[6.1]
  def change
    create_table :autors do |t|
      t.string :nom
      t.string :apellido_p
      t.string :apellido_m
      t.string :nacionalidad
      t.date :fecha_nac
      t.string :sexo

      t.timestamps
    end
  end
end
