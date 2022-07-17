class CreateCompanyReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :company_reviews do |t|
      t.string :title
      t.string :description
      t.integer :score
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
