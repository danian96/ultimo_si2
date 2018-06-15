class User < ActiveRecord::Base
  has_many :favourites
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :role

  def super_admin?
    self.role.name == "Super Admin"
  end
end
