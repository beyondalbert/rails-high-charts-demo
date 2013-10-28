# coding: utf-8
class DemosController < ApplicationController
  def index
		@testobject = NeqaHighCharts::HighChart.new do |h|
			h.chart = {"plotShadow" => false}
			h.title = {"text" => "brower market"}
			h.tooltip = {"pointFormat" => '{series.name}:<b>{point.percentage:.1f}%</b>'}
			h.plotOptions = {"pie" => {"allowPointSelect" => true, "cursor" => 'pointer', "dataLabels" => {"enabled" => true, "color" => '#000000', "connectorColor" => '#000000', "format" => '<b>{point.name}</b>:{point.percentage:.1f} %'}}}
			h.series = [{"type" => 'pie', "name" => 'browser share', "data" => [["firefox", 45.0], ["IE", 26.8], ["safari", 8.5], ["opera", 6.2], ["other", 0.7]]}]
		end

		@testobject_line = NeqaHighCharts::HighChart.new do |h|
			h.chart = {"type" => 'line'}
			h.title = {'text' => 'Monthly Average Temperature'}
			h.subtitle = {'text' => 'source: worldclimete.com'}
			h.xAxis = {'categories' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']}
			h.yAxis = {'title' => {'text' => 'Temperature (°C)'}}
			h.tooltip = {'enabled' => true, 'formatter' => "function(){return '<b>'+ this.series.name +'</b><br/>'+this.x +': '+ this.y +'°C';}"}
			h.plotOptions = {'line' => {'dataLabels' => {'enabled' => true}, 'enableMouseTracking' => true}}
			h.series = [{'name' => 'tokyo', 'data' => [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]}, {'name' => 'lodon', 'data' => [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]}]
		end

		@testobject_column = NeqaHighCharts::HighChart.new do |h|
			h.chart = {'type' => 'column'}
			h.title = {'text' => 'monthly average Rainfall'}
			h.subtitle = {'text' => 'Source: WorldClimate.com'}
			h.xAxis = {'categories' => ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']}
			h.yAxis = {'min' => 0, 'title' => {'text' => 'Rainfall(mm)'}}
			h.tooltip = {'headerFormat' => '<span style="font-size:10px">{point.key}</span><table>', 'pointFormat' => '<tr><td style="color:{series.color};padding:0">{series.name}: </td><td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>', 'footerFormat' => '</table>', 'shared' => true, 'useHTML' => true}
			h.plotOptions = {'column' => {'pointPadding' => 0.2, 'borderWidth' => 0}}
			h.series = [{'name' => 'tokyo', 'data' => [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]},
									{'name' => 'New York', 'data' => [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]},
									{'name' => 'London', 'data' => [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]},
									{'name' => 'Berlin', 'data' => [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]}]
		end
  end
end
