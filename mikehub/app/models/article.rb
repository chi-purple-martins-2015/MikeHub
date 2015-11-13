class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :edits
  has_many :editors, through: :edits, source: :editor

  validates :title, presence: true

  def has_edits?
    self.edits.count > 0
  end

end
