# Custom types definition

Postgrex.Types.define(
  NilCrud.PostgrexTypes,
  [] ++ Ecto.Adapters.Postgres.extensions(),
  json: Jason
)
