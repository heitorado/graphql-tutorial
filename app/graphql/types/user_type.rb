module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false

    field :links, [LinkType], null: true
    field :votes, [VoteType], null: true
  end
end
