class CreateHousingData < ActiveRecord::Migration[6.1]
  def change
    create_table :housing_data do |t|
      t.references :zip_code, null: false, foreign_key: true
      t.string :month
      t.integer :year
      t.integer :sales_count
      t.integer :avg_price

      t.timestamps
    end
  end
end
