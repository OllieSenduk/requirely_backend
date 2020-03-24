class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.references :instruction, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
