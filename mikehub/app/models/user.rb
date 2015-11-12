class User < ActiveRecord::Base
  has_many :articles, foreign_key: :author_id
  has_many :edits, foreign_key: :editor_id

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
