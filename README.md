# packmatic_poc

Verifying that custom sources work with Evadne Wu's [packmatic](https://github.com/evadne/packmatic)(develop branch) dynamic zipfile creation library

```
iex -S mix
```

```
ExampleSourceReader.main
```

```
% zipinfo /tmp/foo.zip
Archive:  /tmp/foo.zip
Zip file size: 283 bytes, number of entries: 1
?---------  4.5 unx       22 bX defN 70-Jan-01 01:00 test/test.txt
1 file, 22 bytes uncompressed, 29 bytes compressed:  -31.8%
% zipgrep test /tmp/foo.zip
test/test.txt:this is a test message
```
