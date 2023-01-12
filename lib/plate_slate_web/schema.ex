defmodule PlateSlateWeb.Schema do
  use Absinthe.Schema

  query do
    # this is the query entry point to our app
  end

  object :menu_item do
    field :id, :id
    field :name, :string
    field :description, :string
  end
end
