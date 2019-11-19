class Tip < ApplicationRecord
    has_many :challenge_tips
    has_many :challenges, through: :challenge_tips
end
