# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lh, LhWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "15xr7pVlQlqv+qD8a4whmCr8TGTRMP9fsg4gp6DvqXnkIMRLL2IpKWFByZg18PQ2",
  render_errors: [view: LhWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lh.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
