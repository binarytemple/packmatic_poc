defmodule ExampleSource do
  @behaviour Packmatic.Source

  defstruct ram_file: nil

  def validate(_arg) do
    :ok
  end

  def init(bytes) when is_binary(bytes) do
    {:ok, file} = File.open("foo.txt", [:ram, :write, :binary, :read])
    :file.write(file, bytes)
    :file.position(file, 0)
    {:ok, %ExampleSource{ram_file: file}}
  end

  def read(%ExampleSource{ram_file: ram_file}) do
    case ram_file |> IO.binstream(1024 * 1024) |> Enum.take(1) do
      [data] -> [data]
      [] -> :eof
    end
  end
end
