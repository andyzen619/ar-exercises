class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3} 
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}

  before_destroy :check_for_number_of_employees

  private
    def check_for_number_of_employees
      if employees.any?
        errors[:base] << "Cannot delete, store has more than 0 employee" 
        return false
      end
    end
end
