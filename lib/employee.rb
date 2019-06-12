require_relative 'randomstring'
class Employee < ActiveRecord::Base
  before_save :default_password
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store_id, presence: true

  private
  def default_password
    self.password = Rsg.get
    
  end
end
