defmodule PhoenixApp.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :artist, :string
    field :name, :string
    field :track_count, :integer

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:name, :artist, :track_count])
    |> validate_required([:name, :artist, :track_count])
  end
end
