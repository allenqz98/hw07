# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hw07,
  ecto_repos: [Hw07.Repo]

# Configures the endpoint
config :hw07, Hw07Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6Q/sIvU5TZBSo9NeYsqUj9vJd7wcpE9Bu7I0yHfocJ2vGJ1VAeQfhmv9l459hDJx",
  render_errors: [view: Hw07Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hw07.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
