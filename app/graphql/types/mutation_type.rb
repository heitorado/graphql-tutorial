module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser, description: 'Creates a new user'
    field :sign_in_user, mutation: Mutations::SignInUser, description: 'Signs in an already created user'
    field :create_link, mutation: Mutations::CreateLink, description: 'Insert a new link into database'
  end
end
