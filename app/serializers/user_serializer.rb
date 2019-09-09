class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :bookmarks, serializer: BookmarkSerializer 
  #reference: https://github.com/Netflix/fast_jsonapi/issues/160
  attribute :bookmarks do |object|
    BookmarkSerializer.new(object.bookmarks).as_json["data"]
  end
end


