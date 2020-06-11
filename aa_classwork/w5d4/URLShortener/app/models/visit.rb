# == Schema Information
#
# Table name: visits
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  shortened_url_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Visit < ApplicationRecord
    validates :user_id, :shortened_url, presence: true

    belongs_to :visitor,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: 'User'

    def self.record_visit!(user, shortened_url)
        Visit.create!(user_id: user.id, shortened_url: shortened_url.id)
    end        


end
