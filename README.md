# MiniMP3.hx
MP3 decoder for native platforms using Haxe with hxcpp / c++

Haxe externs and implementation of MP3 decoding using MiniMP3.

Basic example:
```haxe

var decoded = MiniMP3.decodeMP3(sys.io.File.getBytes("rickroll.mp3"));
var wavFile = MiniMP3.encodeWav(decoded.data,decoded.sampleCount,decoded.sampleRate,decoded.channels);
sys.io.File.saveBytes("rickroll.wav",wavFile);

```
