class CreateFavoritedZips < ActiveRecord::Migration[6.1]
  def change
    create_table :favorited_zips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :zip_code, null: false, foreign_key: true

      t.timestamps
    end
  end
end
