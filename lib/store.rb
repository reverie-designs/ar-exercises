class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0 }
  validate :carry_apparel
  def carry_apparel
    if !mens_apparel && !womens_apparel
      then errors.add(:womens_apparel, "ERROR must have either men's or women's apparel")
    end  
  end  
end
