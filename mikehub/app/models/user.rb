class User < ActiveRecord::Base
  has_many :articles, foreign_key: :author_id
  has_many :edits, foreign_key: :editor_id

  has_secure_password

end
