module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :genre, String, null: false
    field :plot, String, null: false
    field :year, Integer, null: false
  end
end
