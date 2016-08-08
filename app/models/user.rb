class User < ActiveRecord::Base
  enum role: [:guest, :admin, :user]
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable, :confirmable, :lockable
  has_many :orders, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :suggestions, class_name: Suggest.name, dependent: :destroy

  # def admin?
  #   self.role == 2
  # end

  # def regular?
  #   self.role == 1
  # end

  # def guest?
  #   self.role == nil
  # end
end
