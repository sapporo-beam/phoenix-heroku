defmodule PhoenixHeroku.Router do
  use Phoenix.Router

  get "/", PhoenixHeroku.PageController, :index, as: :pages

end
