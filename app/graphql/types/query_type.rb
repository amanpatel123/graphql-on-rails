module Types
  class QueryType < Types::BaseObject

    field :items, [Types::ItemType], null: false, description: "returns all the items"
    field :users, [Types::UserType], null: false, description: "returns all the users"

    def items
      Item.preload(:user)
    end

    def users
      User.all
    end
  end
end
