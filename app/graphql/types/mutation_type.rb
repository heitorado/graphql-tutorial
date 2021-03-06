module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser, description: 'Creates a new user'
    field :create_link, mutation: Mutations::CreateLink, description: 'Insert a new link into database'
    field :create_vote, mutation: Mutations::CreateVote, description: 'Adds a vote for a link'
    field :sign_in_user, mutation: Mutations::SignInUser, description: 'Signs in an already created user'
  end
end
