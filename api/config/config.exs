# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cwap,
  ecto_repos: [Cwap.Repo]

# Configures the endpoint
config :cwap, CwapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KVLu2qUyztlyj79BFEbl+jc+ETRm4ObcShPrObV3HQMTftkWyUgL/KeEt4fZLA78",
  render_errors: [view: CwapWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Cwap.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "RqA9o/Q7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :cwap, CwapWeb.Auth.Guardian,
  issuer: "cwap",
  secret_key: "9f94QS6xG9a4sQnP14YmY16jcgszUVgVtWHlKoAgDMX4c0zdg6s18f5sY6Y7TP8V"

# config :cwap, CwapWeb.Auth.Guardian,
#   issuer: "cwap",
#   secret_key: "dNPZpWyx16+a6fOuts2NgPZz2pFCoFsg/VSKKRubvMTBZ9wfWFaegoEdU5dJKbgf"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
