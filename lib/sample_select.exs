SampleElixirEctoSelect.Repo.start_link

alias SampleElixirEctoSelect.Repo
alias SampleElixirEctoSelect.RssFeed
alias Ecto.Query

require Ecto.Query

feeds = RssFeed
|> Query.select([f], %{ id: f.id, title: f.title })
#|> Query.select([f], [f.id, f.title])
|> Query.limit([u], 1)
|> Repo.all

IO.inspect feeds
