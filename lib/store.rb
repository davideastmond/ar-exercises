class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  # validates :mens_apparel, presence: true
  # validates :womens_apparel, presence: true
  validates_with MyValidator

  before_save :default_values
  def default_values
    self.womens_apparel ||= false
    self.mens_apparel ||= false
  end
end
