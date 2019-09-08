class BookmarkSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user, serializer: UserSerializer 
  belongs_to :school 
  attributes :user_id, :school_id
  attribute :school_name do |object|
    object.school.name
  end
end
