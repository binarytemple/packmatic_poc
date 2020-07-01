defmodule ExampleSourceReader do
  def main() do
    manifest_source_entry = {ExampleSource, "this is a test message"}
    entries = Packmatic.Manifest.create()

    entries =
      Packmatic.Manifest.prepend(entries, source: manifest_source_entry, path: "test/test.txt")

    stream = Packmatic.build_stream(entries)

    stream |> Stream.into(File.stream!("/tmp/foo.zip", [:write])) |> Stream.run()
  end
end
