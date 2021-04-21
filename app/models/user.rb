# User < ApplicationRecord < ActiveRecord::Base < Object
class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }
  # Only those email addresses matching the regular expression are considered to be valid
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
# since the uniqueness validation is case sensitive add an option to nullify it
  validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: {case_sensitive: false}

end
