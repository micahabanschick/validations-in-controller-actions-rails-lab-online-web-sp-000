class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :content, length: { minimum: 100 }

  def correct_category?
    if :category == "Fiction" || category == "Non-Fiction"
      true
    end
  end
end
