module  Types
  module Input
    class MovieInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :genre, String, required: true
      argument :plot, String, required: true
      argument :year, Integer, required: true
    end
  end
end