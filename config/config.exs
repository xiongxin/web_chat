# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :web_chat, WebChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8Xlp1XSf8ubT55k2beAHto0ldj0XMaplXRsQOp+45qTI+YCgZ3S3yVn8UwXJ34ip",
  render_errors: [view: WebChatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WebChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
