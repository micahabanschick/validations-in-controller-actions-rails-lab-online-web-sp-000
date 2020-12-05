class Post < ActiveRecord::Base
  validates :title, presence: true, if: :correct_category?

  def correct_category?
    category == "Fiction" || category == "Non-Fiction"
  end
end
