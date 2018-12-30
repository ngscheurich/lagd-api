# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lagd,
  namespace: LAGD,
  ecto_repos: [LAGD.Repo]

# Configures the endpoint
config :lagd, LAGDWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KsB9B449GWh/Ks7I3BH9hMJd/wI+P3j8TQau6e7NDCN69LjLusPeP9YfeYk6651f",
  render_errors: [view: LAGDWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: LAGD.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
