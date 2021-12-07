class Agenda < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :articles, dependent: :destroy

  def owner?(user)
    return self.owner_id == user.id
  end
  
end
