SampleElixirEctoSelect.Repo.start_link

alias SampleElixirEctoSelect.RssFeed

Enum.map 0..99,
  fn _ ->
    params = %{
      feed_url: Faker.Internet.url,
      title: Faker.Commerce.product_name,
      subtitle: Faker.Company.bs,
      summary: Faker.Lorem.Shakespeare.romeo_and_juliet,
      link: Faker.Internet.url,
      author: Faker.Name.name,
      image: Faker.Internet.image_url,
    }

    feed = %RssFeed{}
    changeset = RssFeed.changeset(feed, params)
    IO.inspect changeset

    try do
      SampleElixirEctoSelect.Repo.insert!(changeset)
    rescue
      # ignore error
      _ -> {}
    end
  end
