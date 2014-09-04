# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, PhoenixHeroku.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_phoenix_heroku_key",
  session_secret: "8^(W(89CZHR55^I2#U@=@0=G+Q%7J6F(YC&PD&!QXLQC7N!E^!LV1ZN1K93F71$+LMN*PE3S3W",
  catch_errors: true,
  debug_errors: false,
  error_controller: PhoenixHeroku.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
