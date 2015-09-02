class Term < ActiveRecord::Base
  belongs_to :office
  belongs_to :officer, class_name: "User"
end
