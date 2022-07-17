class Company < ApplicationRecord
  has_many :company_reviews

  before_create :slugify


  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    if (company_reviews.count != 0)
      company_reviews.average(:score).round(2).to_f
    else
      puts("no tiene reviews")
    end  
  end 
end
