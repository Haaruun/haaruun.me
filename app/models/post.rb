class Post < ActiveRecord::Base
  has_attached_file :image, styles: {large: "600x600", medium: "300x300", thumbnail: "150x150"} 
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


	has_many :comments

	belongs_to :category

	extend FriendlyId
    friendly_id :title, use: :slugged


    def next
    Post.where("id > ?", id).order("id ASC").first || Post.first
  end

  def previous
    Post.where("id < ?", id).order("id DESC").first || Post.last
  end


 
end
