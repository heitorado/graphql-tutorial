module Types
  class LinkType < Types::BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
    # "method" option remaps field to an attribute of Link model
    field :posted_by, UserType, null: true, method: :user
  end
end
