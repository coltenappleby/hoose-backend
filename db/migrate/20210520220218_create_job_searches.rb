class CreateJobSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :job_searches do |t|
      t.references :zip_code, null: false, foreign_key: true
      t.boolean :remote
      t.string :salary_estimate
      t.string :search_term
      t.integer :radius
      t.string :job_type
      t.string :experience_level
      t.string :date_posted
      t.integer :number_of_posts
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
