class CreateRelacionLibros < ActiveRecord::Migration[6.1]
  def change
    create_table :relacion_libros do |t|
      t.references :libro, null: false, foreign_key: true
      t.references :biblioteca, null: false, foreign_key: true

      t.timestamps
    end
  end
end
