class CreateZipCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :zip_codes do |t|
      t.integer :zip
      t.integer :population
      t.string :state

      t.timestamps
    end
  end
end
