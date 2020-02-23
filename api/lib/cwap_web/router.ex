defmodule CwapWeb.Router do
  use CwapWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CwapWeb do
    pipe_through :api
  end
end
