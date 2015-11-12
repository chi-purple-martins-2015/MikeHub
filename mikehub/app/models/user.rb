class User < ActiveRecord::Base
  has_many :articles, foreign_key: :author_id
  has_many :edits, foreign_key: :editor_id
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, :with => /\A[\w+\-.]+@(dbc|DBC|Dbc|dBc|dbC).com\Z/

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
