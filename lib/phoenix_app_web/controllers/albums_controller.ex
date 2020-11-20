defmodule PhoenixAppWeb.AlbumsController do
  alias PhoenixApp.{Repo, Album}
  use PhoenixAppWeb, :controller
  import Ecto.Query

  def index(conn, _params) do
    render conn, "index.html",

    albums: Repo.all(
      from a in Album,
      select: %{:name => a.name, :artist => a.artist, :tracks => a.track_count}
    )
  end
end
