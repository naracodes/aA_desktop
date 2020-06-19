# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ActiveRecord::Base
    COLORS = ['pink', 'red', 'black', 'gold', 'blue']
    SEX = ['M', 'F']

    validates :birth_date, :color, :name, :sex, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: SEX
    validate :not_in_future

    def age
        @cat_age = Date.today.year - self.birth_date.year
        @cat_age
    end

    def not_in_future
        errors[:birth_date] << "I can't be born in the future--silly!" unless birth_date < Date.today
    end

end
