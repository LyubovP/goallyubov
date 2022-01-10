class Task < ApplicationRecord
  belongs_to :user
  
  enum priority: [:low, :medium, :high]
  enum completion_status: { active: 0, completed: 1 }
  
  validates :title, presence: true
  validates :description, presence: true
  validates :priority, presence: true
  validates :due_date, presence: true

end
