# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nil_crud,
  ecto_repos: [NilCrud.Repo]

# Configures the endpoint
config :nil_crud, NilCrudWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0xVXBV9vInzGWTdFeqV/hmdOzivouHazn6ZtmEUYs1+wZoWEBrRKMhWVlbObDa2Z",
  render_errors: [view: NilCrudWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: NilCrud.PubSub,
           adapter: Phoenix.PubSub.PG2]

  # plug Plug.Parsers,
  #  parsers: [:urlencoded, :multipart, :json],
  #  pass: ["*/*"],
  #  json_decoder: Jason

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Jason ( JSON parser )
config :phoenix, :format_encoders, json: Jason

# Connect Ecto to Jason
config :ecto, json_library: Jason

config :nil_crud, NilCrud.Repo,
  types: NilCrud.PostgrexTypes

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
