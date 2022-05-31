class CreatePapers < ActiveRecord::Migration[6.1]
  def change
    create_table :papers do |t|
      t.string :name
      t.text :disclaimer
      t.date :valid_from
      t.date :valid_to
      t.string :authority
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
