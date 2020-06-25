# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ActiveRecord::Base
    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :gardens,
        foreign_key: :garden_owner_id,
        class_name: :Garden

    has_many :flowers,
        foreign_key: :gardener_id,
        class_name: :Flower

    has_many :flowers_in_all_gardens,
        through: :gardens,
        source: :flowers

    has_many :gardens_with_my_flowers,
        through: :flowers,
        source: :garden
end