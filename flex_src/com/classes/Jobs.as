package com.classes
{
	import mx.controls.List;
	
	[Bindable]
	[RemoteClass(alias="cn.edu.buaa.cngrid.Jobs")]
	public class Jobs
	{
		public var gid:String;
		public var user:String;		
		public var app:String;
		public var hpc:String;
		public var queue:String;		
		public var core:int;
		public var status:int;
		public var submitTime:String;
		public var updateTime:String;
	}
}