defmodule WebChatWeb.PageController do
  use WebChatWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
