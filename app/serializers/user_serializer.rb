class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :bookmarks, serializer: BookmarkSerializer 
end
