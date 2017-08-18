package com.meduzik.jf.utils {
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;

	public function ReadFileContents(file:File):String {
		var stream:FileStream = new FileStream();
		stream.open(file, FileMode.READ);
		try{
			return stream.readUTFBytes(stream.bytesAvailable);
		}finally{
			stream.close();
		}
		
		return null;
	}

}