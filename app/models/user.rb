class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles

  # Set the default value of accepted to false
  after_initialize :default_values
  private
    def default_values
      self.accepted = false
    end

end
