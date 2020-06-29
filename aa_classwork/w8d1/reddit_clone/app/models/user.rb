# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord

    #FIG VAPER

    validates :username, :password_digest, :session_token, presence: true, uniqueness: true
    validates :password, length: { minimum: 8, allow_nil: true }

    attr_reader :password

    after_initialize :ensure_session_token

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil unless user && user.is_password?(password)
        user
    end

    def is_password?(password)
        bc = BCrypt::Password.new(self.password_digest)
        bc.is_password?(password)
    end

    def reset_session_token!
       self.session_token = SecureRandom::urlsafe_base64
       self.save!
       self.session_token 
    end

    private
    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end
end
