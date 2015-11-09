defmodule SampleElixirEctoSelect.RssFeed do
  use Ecto.Model

  import Ecto.Changeset
  import Ecto.Query, only: [from: 1, from: 2]

  require Logger

  schema "rss_feeds" do
    field :feed_url, :string
    field :feed_id, :string
    field :title, :string
    field :subtitle, :string
    field :summary, :string
    field :link, :string
    field :author, :string
    field :image, :string
    field :updated, Ecto.DateTime

    timestamps
  end

  def changeset(model, params) do
    model
    |> cast(params, ~w(), ~w(feed_url title feed_id subtitle summary link author image updated))
  end
end
