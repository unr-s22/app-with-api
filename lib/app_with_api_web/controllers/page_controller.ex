defmodule AppWithApiWeb.PageController do
  use AppWithApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
