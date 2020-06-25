class Goal < ApplicationRecord
    STATUS = ["INCOMPLETE", "COMPLETE", "IN-PROGRESS"]

    validates :user_id, :name, :description, :status, presence: true
    validates :status, inclusion: STATUS

    belongs_to :user
end
