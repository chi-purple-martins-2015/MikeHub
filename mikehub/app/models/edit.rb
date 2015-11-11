class Edit < ActiveRecord::Base
  belongs_to :article
  belongs_to :editor, class_name: "User"
end
