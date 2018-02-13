defmodule NilCrudWeb.PostController do
  use NilCrudWeb, :controller

  def index(conn, _params) do
    json conn, "posting"
  end
end
