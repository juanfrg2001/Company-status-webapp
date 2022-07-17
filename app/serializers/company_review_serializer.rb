class CompanyReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :company_id
end
