defmodule PlateSlateWeb.Schema do
  alias PlateSlateWeb.Resolvers
  use Absinthe.Schema

  enum :sort_order do
    value(:asc)
    value(:desc)
  end

  query do
    @desc "The list of available items on the menu"
    field :menu_items, list_of(:menu_item) do
      arg(:matching, :string)
      arg(:order, type: :sort_order, default_value: :asc)
      resolve(&Resolvers.Menu.menu_items/3)
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
