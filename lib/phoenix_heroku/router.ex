defmodule PhoenixHeroku.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :phoenix_heroku
  get "/", PhoenixHeroku.Controllers.Pages, :index, as: :page
end
