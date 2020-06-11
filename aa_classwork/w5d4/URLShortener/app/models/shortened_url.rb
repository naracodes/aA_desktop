# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string
#  short_url  :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    validates :long_url, :short_url, :user_id, presence: true
    validates :short_url, uniqueness: true

    belongs_to :submitter,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: 'User'

    has_many :visits, 
    primary_key: :id, 
    foreign_key: :shortened_url_id, 
    class_name: 'Visit'

    has_many :visitors,
    -> { distinct },
    through: :visits,
    source: :visitor

    def self.random_code 
        loop do 
            random_code = SecureRandom.urlsafe_base64(16)
            return random_code unless ShortenedUrl.exists?(short_url: random_code)
        end 
    end 
    
    def self.shortener(user, long_url)
        ShortenedUrl.create!(user_id: user.id, long_url: long_url, short_url: ShortenedUrl.random_code)
    end

    def num_clicks 
        visits.count 
    end

    def num_uniques 
        visits.distinct.count(:user_id)
    end

    def num_recent_uniques 
        visits.select(:user_id).where(10.minutes.ago).distinct.count         
    end 
end
