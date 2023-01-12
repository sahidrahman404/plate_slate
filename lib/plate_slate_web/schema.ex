defmodule PlateSlateWeb.Schema do
  alias PlateSlate.Menu
  alias PlateSlate.Repo
  use Absinthe.Schema

  query do
    @desc "The list of available items on the menu"
    field :menu_items, list_of(:menu_item) do
      resolve(fn _, _, _ ->
        {:ok, Repo.all(Menu.Item)}
      end)
    end
  end

  @desc "Menu item fields"
  object :menu_item do
    field :id, :id
    field :name, :string
    field :description, :string
    field :price, :string
    field :added_on, :string
  end
end
