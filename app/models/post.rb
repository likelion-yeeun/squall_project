class Post < ActiveRecord::Base
    has_many :comments
    validates :content, presence: { message: "내용을 작성해주세요."}
    include SearchCop

    search_scope :search do
    attributes :content, :created_at
  end
end
