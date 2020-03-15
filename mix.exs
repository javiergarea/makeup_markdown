defmodule MakeupMarkdown.MixProject do
  use Mix.Project

  def project do
    [
      app: :makeup_markdown,
      version: "0.1.0",
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger],
      extra_applications: [:stream_data]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:makeup, "~> 1.0"},
      {:credo, "~> 1.3", only: [:dev, :test], runtime: false},
      {:stream_data, "~> 0.1", only: :test}
    ]
  end
end