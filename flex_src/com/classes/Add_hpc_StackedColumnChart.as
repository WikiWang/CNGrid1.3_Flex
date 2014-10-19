package com.classes
{
	import com.amcharts.chartClasses.AmGraph;
	import com.components.HPC_Button;
	
	import flash.events.MouseEvent;
	import flash.utils.Timer;
	
	import mx.controls.Alert;

	public class Add_hpc_StackedColumnChart
	{
		private var hpc_button:HPC_Button;
		private var graph:AmGraph;
		private var cngrid:Object;
		public function Add_hpc_StackedColumnChart(hpc_button:HPC_Button,graph:AmGraph,cngrid:Object)
		{
			this.graph = graph;
			this.cngrid = cngrid;
			this.hpc_button = hpc_button;
			graph.addEventListener(MouseEvent.CLICK, hpc_StackedColumnChart_clickHandler);
			Alert.show(hpc_button.name.toString());
//			graph.setStyle("click",hpc_StackedColumnChart_clickHandler);
		}
		private function hpc_StackedColumnChart_clickHandler(event:MouseEvent):void{
			cngrid.shwo_details_click(hpc_button);
		}
	}
}