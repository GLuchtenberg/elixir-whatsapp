use Mix.Config

# Configure your database
config :cwap, Cwap.Repo,
  username: "postgres",
  password: "123456",
  database: "cwap_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cwap, CwapWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
