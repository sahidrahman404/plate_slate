defmodule PlateSlate.Menu.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :added_on, :date
    field :description, :string
    field :name, :string
    field :price, :decimal
    field :category_id, :id

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :description, :price, :added_on])
    |> validate_required([:name, :description, :price, :added_on])
  end
end
