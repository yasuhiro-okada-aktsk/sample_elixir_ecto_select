defmodule SampleElixirEctoSelect.Mixfile do
  use Mix.Project

  def project do
    [app: :sample_elixir_ecto_select,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: apps]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [ {:ecto, "~> 1.0"},
      {:mariaex, ">= 0.0.0"},
      {:faker, "~> 0.5", only: [:test, :dev]}
    ]
  end

  defp apps() do
    apps = [:mariaex, :ecto, :logger]
    if Mix.env in [:test, :dev] do
      apps = apps ++ [:faker]
    end

    apps
  end
end
