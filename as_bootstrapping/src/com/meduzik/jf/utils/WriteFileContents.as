package com.meduzik.jf.utils {
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;

	public function WriteFileContents(file:File, data:String):void {
		var stream:FileStream = new FileStream();
		stream.open(file, FileMode.WRITE);
		try{
			stream.writeUTFBytes(data);
		}finally{
			stream.close();
		}
	}

}