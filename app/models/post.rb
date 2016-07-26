class Post < ActiveRecord::Base
    has_many :comments
    validates :content, presence: { message: "제목을 작성해주세요."}
    include SearchCop

    search_scope :search do
    attributes :title, :content, :created_at
  end
end
