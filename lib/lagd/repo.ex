defmodule LAGD.Repo do
  use Ecto.Repo,
    otp_app: :lagd,
    adapter: Ecto.Adapters.Postgres
end
