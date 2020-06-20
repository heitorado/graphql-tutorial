module Types
  class MutationType < Types::BaseObject
    field :create_link, mutation: Mutations::CreateLink, description: 'Insert a new link into database'
  end
end
