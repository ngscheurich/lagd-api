defmodule LAGDWeb.Router do
  use LAGDWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through(:api)

    forward("/api", Absinthe.Plug, schema: LAGD.Schema)
    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: LAGD.Schema, json_codec: Jason)
  end
end
