module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :fetchNotes, resolver: Queries::FetchNotes
    field :fetchNote, resolver: Queries::FetchNote
  end
end
