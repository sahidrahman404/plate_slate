defmodule PlateSlate.Menu.ItemTag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "item_tags" do
    field :description, :string
    field :name, :string

    many_to_many :items, PlateSlate.Menu.Item, join_through: "items_taggings"

    timestamps()
  end

  @doc false
  def changeset(item_tag, attrs) do
    item_tag
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
