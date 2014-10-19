package com.classes
{
	import com.components.HPC_Button;
	
	import flash.events.MouseEvent;
	import flash.utils.Timer;
	
	import mx.controls.Alert;
	import mx.core.Application;
	
	import spark.components.BorderContainer;
	
	public class Add_HPC_ButtonClick
	{
		private var hpc_button:HPC_Button;
		private var cngrid:Object;
		private var timerOfRandom:Timer;
		public function Add_HPC_ButtonClick(hpc_button:HPC_Button, cngrid:Object, timerOfRandom:Timer)
		{
			this.hpc_button = hpc_button;
			this.cngrid = cngrid;
			this.timerOfRandom = timerOfRandom;
			hpc_button.addEventListener(MouseEvent.CLICK,HPC_button_clickHandler);
		}
		private function HPC_button_clickHandler(event:MouseEvent):void{
			event.stopPropagation(); //防止单击button时触发单击container触发的timer.start()。
			event.stopImmediatePropagation();
			if(timerOfRandom.running){
				timerOfRandom.stop();
			}
			cngrid.shwo_details_click(hpc_button);
		}
	}
}