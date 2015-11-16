SampleElixirEctoSelect.Repo.start_link

alias SampleElixirEctoSelect.Repo
alias SampleElixirEctoSelect.RssFeed
alias Ecto.Query

require Ecto.Query
require QueryEx

feed = RssFeed
|> Query.select([f], %{ id: f.id, title: f.title })
|> Query.limit([u], 1)
|> Repo.all

IO.puts "Ecto.Query.select: #{inspect feed}"


feed = RssFeed
|> QueryEx.select(["id", "title"])
|> Query.limit([u], 1)
|> Repo.all

IO.puts "QueryEx.select 1: #{inspect feed}"


cols = ["id", "title"]

feed = RssFeed
|> QueryEx.select(cols)
|> Query.limit([u], 1)
|> Repo.all

IO.puts "QueryEx.select 2: #{inspect feed}"


#[{:f, [], nil}]
#{:%{}, [],
# [id: {{:., [], [{:f, [], nil}, :id]}, [], []},
#  title: {{:., [], [{:f, [], nil}, :title]}, [], []}]}

# "id" -> [id: {{:., [], [{:f, [], nil}, :id]}, [], []}]
