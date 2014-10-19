package com.classes
{
	import mx.controls.List;

	[Bindable]
	[RemoteClass(alias="cn.edu.buaa.cngrid.HPC")]
	public class HPC
	{
		public var nodeName:String;
		public var activeUser:int = 0;		
		public var runJob:int = 0;
		public var pendJob:int = 0;
		public var runCore:int = 0;		
		public var pendCore:int = 0;
		public var userlist:List;
	}
}