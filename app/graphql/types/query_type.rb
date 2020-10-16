module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

  field :fetch_movies, resolver: Queries::FetchMovies
  field :fetch_movie, resolver: Queries::FetchMovie
  end
end
