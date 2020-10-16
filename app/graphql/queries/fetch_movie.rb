module Queries
  class FetchMovie < Queries::BaseQuery
    type Types::MovieType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Movie.find(id)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Movie does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        "#{e.record.errors.full_messages.join(', ')}")
    end
  end
end