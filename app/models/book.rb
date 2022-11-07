class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :book_categorys, dependent: :destroy
  has_many :categorys, through: :book_categorys

  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}

  # scope :latest, -> {order(created_at: :desc)}
  # scope :old, -> {order(created_at: :asc)}
  # scope :star_count, -> {order(rate: :desc)}

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  def self.search_for(content, method)
    if method == "perfect"
      Book.where(title: content)
    elsif method == "forward"
      Book.where("title LIKE?", content + '%')
    elsif method == "backward"
      Book.where("title LIKE?", '%' + content)
    else
      Book.where("title LIKE?", '%' + content + '%')
    end
  end
end
