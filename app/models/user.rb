class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
  before_save :avatar
  has_one_attached :avatar
  has_many :tasks, dependent: :destroy
  after_commit :add_default_avatar, on: %i[create update]
  
  private
  def add_default_avatar
    return if avatar.attached?
      self.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default_avatar.png')), filename: 'default_avatar.png', content_type: 'image/png')
  end
  
  protected
  def confirmation_required?
    false
  end
end
