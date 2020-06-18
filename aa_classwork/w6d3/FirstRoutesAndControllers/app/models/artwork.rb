# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true, uniqueness: true


    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User
    
    # has_one :image_url,
    #     through: :artist,
    #     source: :artworks

    has_many :shared_viewers, dependent: :destroy,
        through: :artists, 
        source: :viewer
        
end
