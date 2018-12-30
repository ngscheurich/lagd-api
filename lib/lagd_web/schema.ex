defmodule LAGD.Schema do
  @moduledoc """
  TODO: Write module documentation.
  """

  use Absinthe.Schema

  object :info do
    field :version, non_null(:string)
    field :name, non_null(:string)
  end

  query do
    field :info, :info do
      resolve(fn _, _, _ ->
        {:ok,
         %{
           version: File.read!("VERSION"),
           name: "Louisiana Game Developers"
         }}
      end)
    end
  end
end
