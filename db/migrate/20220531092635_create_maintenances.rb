class CreateMaintenances < ActiveRecord::Migration[6.1]
  def change
    create_table :maintenances do |t|
      t.string :title
      t.date :done_date
      t.text :comment
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
