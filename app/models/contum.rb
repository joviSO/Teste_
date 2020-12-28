class Contum < ApplicationRecord
    belongs_to :user
    has_one :extract

    scope :by_user, -> (current_user){where(userId: current_user.id)}
end