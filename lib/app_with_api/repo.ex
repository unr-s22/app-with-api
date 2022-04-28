defmodule AppWithApi.Repo do
  use Ecto.Repo,
    otp_app: :app_with_api,
    adapter: Ecto.Adapters.Postgres
end
