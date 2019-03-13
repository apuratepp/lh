defmodule LhWeb.Router do
  use LhWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LhWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/incidencia", IncidenciaController, only: [:index, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", LhWeb do
  #   pipe_through :api
  # end
end
