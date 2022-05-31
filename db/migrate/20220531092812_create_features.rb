class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :type
      t.date :last_date
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
