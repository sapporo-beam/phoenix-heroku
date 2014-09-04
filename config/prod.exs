use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, PhoenixHeroku.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_phoenix_heroku_key",
  session_secret: "8^(W(89CZHR55^I2#U@=@0=G+Q%7J6F(YC&PD&!QXLQC7N!E^!LV1ZN1K93F71$+LMN*PE3S3W"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

