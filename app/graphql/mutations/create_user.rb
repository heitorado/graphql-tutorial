module Mutations
  class CreateUser < BaseMutation
    # define input type for authprovider for this specific mutation
    class AuthProviderSignupData < Types::BaseInputObject
      argument :credentials, Types::AuthProviderCredentialsInput, required: false
    end

    argument :name, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false

    type Types::UserType

    def resolve(name: nil, auth_provider: nil)
      User.create!(
        name: name,
        email: auth_provider.dig(:credentials, :email),
        password: auth_provider.dig(:credentials, :password)
      )
    end
  end
end
