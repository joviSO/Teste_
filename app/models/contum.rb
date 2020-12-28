class Contum < ApplicationRecord
    belongs_to :user


    scope :by_user, -> (current_user){where(userId: current_user.id)}
end