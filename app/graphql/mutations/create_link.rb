module Mutations
  class CreateLink < BaseMutation
    # arguments passed to 'resolve' method
    argument :description, String, required: true
    argument :url, String, required: true

    # return type from mutation
    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url,
        user: context[:current_user]
      )
    end
  end
end
