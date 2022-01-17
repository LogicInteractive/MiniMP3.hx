package;

/////////////////////////////////////////////////////////////////////////////////////

class Main
{
	
	public static function main()
	{
        var file:String = "rickroll.mp3";

        var decoded = MiniMP3.decodeMP3(sys.io.File.getBytes(file));
        var wavFile = MiniMP3.encodeWav(decoded.data,decoded.sampleCount,decoded.sampleRate,decoded.channels);

        sys.io.File.saveBytes(file+".wav",wavFile);

		trace('File written : $file.wav');
		trace(decoded);
	}
}

/////////////////////////////////////////////////////////////////////////////////////
