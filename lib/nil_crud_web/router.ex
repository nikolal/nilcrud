defmodule NilCrudWeb.Router do
  use NilCrudWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NilCrudWeb do
    pipe_through :api

    get "/", GetController, :index
    post "/", PostController, :index
  end
end
