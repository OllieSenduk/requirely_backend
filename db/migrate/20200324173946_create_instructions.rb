class CreateInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :instructions do |t|
      t.references :structure, foreign_key: true
      t.references :instruction, foreign_key: true
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
