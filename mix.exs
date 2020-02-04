defmodule PrettyLoggex.MixProject do
  use Mix.Project

  def project do
    [
      app: :pretty_loggex,
      version: "1.0.0",
      description: "Contains formatters to be used by logging apis with improved search.",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      source_url: "https://github.com/gprimola/pretty_loggex",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:jason, "~> 1.1"}
    ]
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "pretty_loggex",
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/gprimola/pretty_loggex"}
    ]
  end
end
