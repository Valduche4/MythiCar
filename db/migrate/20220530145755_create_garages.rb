class CreateGarages < ActiveRecord::Migration[6.1]
  def change
    create_table :garages do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :specialty

      t.timestamps
    end
  end
end
