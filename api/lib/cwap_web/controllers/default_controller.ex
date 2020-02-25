defmodule CwapWeb.DefaultController do
  use CwapWeb, :controller

  def index(conn, _params) do
    text(conn, "CwapWeb!")
  end
end
