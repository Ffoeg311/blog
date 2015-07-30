class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles

  # Activates the user
  def activate
    self.accepted = true
  end

  def generate_token
    return SecureRandom.hex
  end

  # Set the default value of accepted to false
  after_initialize :default_values, :create_token
  private
    def default_values
      self.accepted = false if self.accepted.nil? 
    end

    def create_token
      self.accept_token = self.generate_token if self.accept_token.nil?
    end
end
