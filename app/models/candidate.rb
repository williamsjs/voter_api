class Candidate < ActiveRecord::Base
  has_many :votes
  has_many :voters, through: :votes

  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, presence: true
  validates :party, presence: true

end
