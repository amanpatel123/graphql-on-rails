module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :fullname, String, null: true

    def fullname
      [object.first_name, object.last_name].join(' ')
    end
  end
end
