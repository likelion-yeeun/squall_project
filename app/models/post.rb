class Post < ActiveRecord::Base
    has_many :comments
    include SearchCop

    search_scope :search do
    attributes :title, :content, :created_at
  end
end
