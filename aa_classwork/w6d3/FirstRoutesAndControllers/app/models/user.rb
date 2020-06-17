# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#
class User < ApplicationRecord
    # validates :name, presence: true
    # validates :email, presence: true
    validates :username, presence: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork

    has_many :shared_artworks,
        through: :artworks, 
        source: :artwork
end
