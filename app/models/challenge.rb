class Challenge < ApplicationRecord
    has_many :challenge_tips
    has_many :tips, through: :challenge_tips
end
