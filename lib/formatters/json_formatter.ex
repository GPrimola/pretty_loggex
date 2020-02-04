defmodule PrettyLoggex.Formatters.JsonFormatter do
  import PrettyLoggex.Formatters.Helper

  def format(level, message, timestamp, metadata) do
    [timestamp: format_timestamp(timestamp), level: level]
    |> Keyword.merge(metadata)
    |> Keyword.merge([message: message])
    |> Enum.map(&format_value/1)
    |> Map.new()
    |> Jason.encode!()
    |> String.to_charlist()
    |> List.insert_at(-1, "\n")
    |> List.insert_at(0, "\n")
    |> List.to_string()
  end

  defp format_value({key, value})
    when is_pid(value), do: {key, inspect(value)}

  defp format_value(kv), do: kv

end
