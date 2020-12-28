class Contum < ApplicationRecord
    belongs_to :user, foreign_key: :userId


    scope :by_user, -> (current_user){where(userId: current_user.id)}
end