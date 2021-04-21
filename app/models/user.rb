# User < ApplicationRecord < ActiveRecord::Base < Object
class User < ApplicationRecord
  # All email are converted to small case before saving it to the database
  # Befor the point where the object is saved, before_save callback is used to
  # downcase the email attribute
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  # Only those email addresses matching the regular expression are considered to be valid
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
# since the uniqueness validation is case sensitive add an option to nullify it
# When email is downcased, there is no need of the attribute {case_sensitive: false}
# since case-sensitive matching works fine if all of the emails are lower-case.
  validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true

end
