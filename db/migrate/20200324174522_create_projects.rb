class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.references :structure, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
