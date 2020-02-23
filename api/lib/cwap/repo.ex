defmodule Cwap.Repo do
  use Ecto.Repo,
    otp_app: :cwap,
    adapter: Ecto.Adapters.Postgres
end
