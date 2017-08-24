package com.meduzik.jf.utils {
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;

	public function ReadFileData(file:File):ByteArray {
		var stream:FileStream = new FileStream();
		stream.open(file, FileMode.READ);
		try{
			var data:ByteArray = new ByteArray();
			stream.readBytes(data);
			return data;
		}finally{
			stream.close();
		}
		
		return null;
	}

}