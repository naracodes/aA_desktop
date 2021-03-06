# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :email, presence: true
    validates :email, uniqueness: true #this is how we add unq

    has_many :submitted_urls,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: 'ShortenedUrl'
end
