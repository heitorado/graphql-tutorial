module Types
  class QueryType < Types::BaseObject
    field :all_links, [LinkType], null: false, description: 'Query for all links in database'

    def all_links
      Link.all
    end
  end
end
