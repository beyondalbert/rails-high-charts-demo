rails-high-charts-demo
======================

rails-high-charts-demo --> generate high charts with rails and neqa_high_charts gem

4 steps to go
--------------------------------------------------------------------

* add high charts libraries in application.html.erb:

```html
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
```

* add neqa_high_charts gem in Gemfiles

```ruby
gem 'neqa_high_charts', :git => 'git@github.com:beyondalbert/neqa_high_charts.git'
```

* generate NeqaHighCharts::HighChart object in controller

```ruby
@testobject = NeqaHighCharts::HighChart.new do |h|
                        h.chart = {"plotShadow" => false}
                        h.title = {"text" => "brower market"}
                        h.tooltip = {"pointFormat" => '{series.name}:<b>{point.percentage:.1f}%</b>'}
                        h.plotOptions = {"pie" => {"allowPointSelect" => true, "cursor" => 'pointer', "dataLabels" => {"enabled" => true, "color" => '#000000', "connectorColor" => '#000000', "format" => '<b>{point.name}</b>:{point.percentage:.1f} %'}}}
                        h.series = [{"type" => 'pie', "name" => 'browser share', "data" => [["firefox", 45.0], ["IE", 26.8], ["safari", 8.5], ["opera", 6.2], ["other", 0.7]]}]
                end
```

* use NeqahighCharts::highChart object in view

```ruby
<%= raw high_chart('high-pie', @testobject, width: 600, height: 300) %>
```

ps
----

Clone it and run it! It's so easy!
