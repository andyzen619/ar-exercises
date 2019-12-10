class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {
    greater_than: 40,
    less_than: 200
  }
  validates :store_id, presence: true

  before_save :generate_random_password

  private
    def generate_random_password
      @char = '1234567890qwertyuiopasdfghjklzxcvbnm*'
      randomPassword = ''
      (1..8).map{|char| randomPassword << @char[rand(@char.length)] }
      self.password = randomPassword
    end

end
