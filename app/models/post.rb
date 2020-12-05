class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, if: :correct_category?
  validates :content, length: { minimum: 100 }

  def correct_category?
    if :category == "Fiction" || category == "Non-Fiction"
      true
    end
  end
end
