defmodule SampleElixirEctoSelect.Repo.Migrations.CreateRssFeed do
  use Ecto.Migration

  def change do
    create table(:rss_feeds) do
      add :feed_url, :string
      add :feed_id, :string
      add :title, :string
      add :subtitle, :string
      add :summary, :text
      add :link, :string
      add :author, :string
      add :image, :string
      add :updated, :datetime

      timestamps
    end

    create unique_index :rss_feeds, [:feed_url]
  end
end
