defmodule AppWithApi.HumanResourcesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `AppWithApi.HumanResources` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> AppWithApi.HumanResources.create_employee()

    employee
  end
end
