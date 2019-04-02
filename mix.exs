defmodule Teacher.MixProject do
  use Mix.Project

  def project do
    [
      app: :teacher,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [mod: {Teacher, []},
     extra_applications: [:logger]]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 1.0"}
    ]
  end
end
