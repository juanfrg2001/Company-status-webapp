class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug

  has_many :company_reviews
end
