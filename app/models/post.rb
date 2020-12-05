class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, if: :correct_category?
  validates :content, length: { minimum: 2 }

  def correct_category?
    category == "Fiction" || category == "Non-Fiction"
  end
end
