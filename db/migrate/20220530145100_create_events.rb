class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.text :description
      t.datetime :start_date
      t.integer :nbr_participant, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
