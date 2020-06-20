module Types
  class MutationType < Types::BaseObject
    field :Create_user, mutation: Mutations::CreateUser, description: 'Creates a new user'
    field :create_link, mutation: Mutations::CreateLink, description: 'Insert a new link into database'
  end
end
