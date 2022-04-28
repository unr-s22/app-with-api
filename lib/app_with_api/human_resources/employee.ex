defmodule AppWithApi.HumanResources.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, only: [:first_name, :last_name]}
  schema "employees" do
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:first_name, :last_name])
    |> validate_required([:first_name, :last_name])
  end
end
