class GraphqlFunDemoSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  # use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  GraphQL::Pagination::Connections
end
