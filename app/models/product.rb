class Product < ActiveRecord::Base
  has_many :reviews

  def review_average
    if reviews.present?
      reviews.average(:rate).round
    end
  end
end
