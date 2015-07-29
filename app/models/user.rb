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

  # Set the default value of accepted to false
  after_initialize :default_values
  private
    def default_values
      self.accepted = false if self.accepted.nil? 
    end

end
