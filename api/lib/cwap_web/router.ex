defmodule CwapWeb.Router do
  use CwapWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :auth do
    plug Cwap.Auth.Pipeline
  end

  scope "/api", CwapWeb do
    pipe_through :api
    # resources "/businesses", BusinessController, except: [:new, :edit]
  end

  pipeline :browser do
    plug(:accepts, ["html"])
  end

  scope "/", CwapWeb do
    pipe_through :browser
    post "/users/signup", UserController, :create
    post "/users/signin", UserController, :signin
  end

  scope "/", CwapWeb do
    pipe_through [:auth]

    get "/", DefaultController, :index
  end
end
