# PrettyLoggex

PrettyLoggex is a customization for [Elixir.Logger](https://hexdocs.pm/logger/Logger.html) that contains two formatters:

- JsonFormatter
- KvFormatter

### JsonFormatter

Formats the Logger output to JSON format.
Example:

```

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"debug","line":5,"message":"This is a debug message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.974Z"}

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"info","line":6,"message":"This is a info message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.975Z"}

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"warn","line":7,"message":"This is a warn message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.975Z"}

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"error","line":8,"message":"This is a error message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.975Z"}
```

### KvFormatter

Formats the Logger output to Key-Value format.
Example:

```

timestamp="2020-02-04T16:47:06.790Z" level=debug pid=#PID<0.204.0> line=5 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a debug message"

timestamp="2020-02-04T16:47:06.791Z" level=info pid=#PID<0.204.0> line=6 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a info message"

timestamp="2020-02-04T16:47:06.791Z" level=warn pid=#PID<0.204.0> line=7 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a warn message"

timestamp="2020-02-04T16:47:06.791Z" level=error pid=#PID<0.204.0> line=8 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a error message"
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `pretty_loggex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pretty_loggex, "~> 1.0.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pretty_loggex](https://hexdocs.pm/pretty_loggex).