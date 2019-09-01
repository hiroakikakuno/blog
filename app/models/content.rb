class Content < ApplicationRecord

  validates :title, :text, presence: {message:'は、必須項目です。'}
  belongs_to :user
end
