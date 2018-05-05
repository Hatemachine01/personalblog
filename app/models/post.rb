class Post < ApplicationRecord
belongs_to :user, required: true

#Validations
validates_presence_of :title, :content
end
