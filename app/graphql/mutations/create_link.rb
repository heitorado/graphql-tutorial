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
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
