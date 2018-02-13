# Custom types definition

Postgrex.Types.define(
  NilCrud.PostgresTypes,
  [] ++ Ecto.Adapters.Postgres.extensions(),
  json: Jason
)
