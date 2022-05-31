class ChangesColumnTypeInFeatures < ActiveRecord::Migration[6.1]
  def change
    rename_column :features, :type, :spec
  end
end
