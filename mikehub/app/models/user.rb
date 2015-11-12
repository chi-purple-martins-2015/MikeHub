class User < ActiveRecord::Base
  has_many :articles, foreign_key: :author_id
  has_many :edits, foreign_key: :editor_id
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  # validates_precense_of :password_digest

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
