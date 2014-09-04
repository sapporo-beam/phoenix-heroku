use Mix.Config

config :phoenix, PhoenixHeroku.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_phoenix_heroku_key",
  session_secret: "8^(W(89CZHR55^I2#U@=@0=G+Q%7J6F(YC&PD&!QXLQC7N!E^!LV1ZN1K93F71$+LMN*PE3S3W",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


