defmodule NilCrudWeb.GetController do
  use NilCrudWeb, :controller

  def index(conn, _params) do
    IO.puts _params
    json conn, "get response"
  end
end
