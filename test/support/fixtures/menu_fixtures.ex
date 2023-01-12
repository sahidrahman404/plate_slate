defmodule PlateSlate.MenuFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PlateSlate.Menu` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> PlateSlate.Menu.create_category()

    category
  end
end
