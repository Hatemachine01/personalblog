class Post < ApplicationRecord
belongs_to :user, required: true
has_many :taggings , dependent: :delete_all
has_many :tags, through: :taggings

#Validations
validates_presence_of :title, :content


	def self.tagged_with(name)
    Tag.find_by!(name: name).posts
 	end

  def self.tag_counts
      Tag.select("tags.*, count(taggings.tag_id) as count").
    joins(:taggings).group("tags.id")
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end

 