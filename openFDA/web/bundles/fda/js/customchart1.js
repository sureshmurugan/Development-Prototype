

/* Charts Generation Scripts */

/*Chart 1 Scripts Start(Enforcement Reports for Drugs vs Medical Devices vs Foods)*/
$(function () {
    service.getDataService('getAllProducts',function(data){
        console.log("chart1");
        console.log(data);
        chart1(data.main_data)


    });


    function chart1(main){
        //var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
        var lineChartData = {
            labels : ["2012","2013","2014","2015"],
            datasets : main

        }

        Chart.defaults.global.animationSteps = 100;
        Chart.defaults.global.tooltipYPadding = 5;
        Chart.defaults.global.tooltipCornerRadius = 0;
        Chart.defaults.global.tooltipTitleFontStyle = "normal";
        Chart.defaults.global.tooltipFillColor = "rgba(0,160,0,0.8)";
        Chart.defaults.global.animationEasing = "easeOutBounce";
        Chart.defaults.global.responsive = true;
        Chart.defaults.global.scaleLineColor = "black";
        Chart.defaults.global.scaleFontSize = 10;
        var ctx = document.getElementById("chart1").getContext("2d");

        var myLineChart = new Chart(ctx).Line(lineChartData, {
            multiTooltipTemplate: "<%= datasetLabel %> - <%= value %>",
            responsive: true,
            pointDotRadius: 5,
            bezierCurve: false,
            scaleShowVerticalLines: false,
            scaleShowHorizontalLines: false,
            scaleGridLineColor: "black",
            datasetFill:false
        });

        myLineChart.datasets[0].points[0].fillColor =  "rgb(0,0,0)";
        myLineChart.datasets[0].points[1].fillColor =  "rgb(0,0,0)";
        myLineChart.datasets[0].points[2].fillColor =  "rgb(0,0,0)";
        myLineChart.datasets[0].points[3].fillColor =  "rgb(0,0,0)";
        myLineChart.datasets[0].points[0].strokeColor ="rgb(0,255,0)";

        myLineChart.datasets[1].points[0].fillColor =  "rgb(0,255,0)";
        myLineChart.datasets[1].points[1].fillColor =  "rgb(0,255,0)";
        myLineChart.datasets[1].points[2].fillColor =  "rgb(0,255,0)";
        myLineChart.datasets[1].points[3].fillColor =  "rgb(0,255,0)";
        myLineChart.datasets[1].points[0].strokeColor =  "rgb(0,0,255)";

        myLineChart.datasets[2].points[0].fillColor =  "rgb(0,0,255)";
        myLineChart.datasets[2].points[1].fillColor =  "rgb(0,0,255)";
        myLineChart.datasets[2].points[2].fillColor =  "rgb(0,0,255)";
        myLineChart.datasets[2].points[3].fillColor =  "rgb(0,0,255)";
        myLineChart.datasets[2].points[2].strokeColor =  "rgb(0,0,255)";

        myLineChart.update();


    }
});

/*Chart 2 Scripts Start(Medical Device Usage Report Based on Year 2010-2014)*/
$(function () {
    service.getDataService('getAllDevices',function(data){
        chart2(data)
    });

    function chart2(main){
        var pie = new d3pie("pie", {
            header: {
                title: {
                    fontSize: 15
                }
            },
            labels: {
                inner: {
                    format: "none"
                }
            },
            data:main,
            tooltips: {
                enabled: true,
                type: "placeholder",
                string: "{label}, {value}"
            }
        });
    }

});


$(function () {
    service.getDataService('getAllDrugIndications',function(data){
        console.log("chart4");
        console.log(data);
        chart3(data.main_data)


    });

    function chart3(main){

        var barChartData = {
            labels : ["2006","2007","2008","2009","2010"],
            datasets : main

        }
        Chart.types.Bar.extend({
            name: "BarAltChart3",
            draw: function(){
                this.options.barValueSpacing = this.chart.width / 9;
                Chart.types.Bar.prototype.draw.apply(this, arguments);
            }
        });

        var ctx3 = document.getElementById("chart3").getContext("2d");
        ctx3.canvas.width = 200;
        ctx3.canvas.height = 50;
        var myChart3 = new Chart(ctx3).BarAltChart3(barChartData, {
            responsive : true,
            scaleFontColor: "#666",
            showScale: true



        });


        myChart3.datasets[0].bars[0].fillColor = "rgba(255,0,0,1)";
       // myChart3.datasets[0].bars[1].fillColor = "rgba(0,255,0,1)";
        myChart3.datasets[0].bars[1].fillColor = "rgba(101,166,32,1)";
        myChart3.datasets[0].bars[2].fillColor = "rgba(0,0,255,1)";
        myChart3.datasets[0].bars[3].fillColor = "rgba(255,255,0,1)";
        myChart3.datasets[0].bars[4].fillColor = "rgba(0,255,255,1)";
        //myChart3.datasets[0].bars[0].highlightFill = "rgba(0,255,0,1)";
        // myChart3.datasets[0].bars[1].highlightFill = "rgba(255,0,0,1)";
        myChart3.update();

    }
});

/*Chart 4 Scripts Start(Adverse Events Reports for Drugs Reported Reaction from 2006 - 2010)*/
$(function () {
    service.getDataService('getAllReportedReactions',function(data){
        console.log("chart4");
        console.log(data);
        chart4(data.main_data)


    });
    function chart4(main){
        var barChartData = {
            labels : ["2006","2007","2008","2009","2010"],
            datasets : main

        }
        Chart.types.Bar.extend({
            name: "BarAlt",
            draw: function(){
                this.options.barValueSpacing = this.chart.width / 9;
                Chart.types.Bar.prototype.draw.apply(this, arguments);
            }
        });

        var ctx4 = document.getElementById("chart4").getContext("2d");
        var myChart4 = new Chart(ctx4).BarAlt(barChartData, {
            responsive : true,
            scaleFontColor: "#666",
            showScale: true
        });

        myChart4.datasets[0].bars[0].fillColor = "rgba(255,0,0,1)";
        myChart4.datasets[0].bars[1].fillColor = "rgba(0,255,0,1)";
        myChart4.datasets[0].bars[2].fillColor = "rgba(0,0,255,1)";
        myChart4.datasets[0].bars[3].fillColor = "rgba(255,255,0,1)";
        myChart4.datasets[0].bars[4].fillColor = "rgba(0,255,255,1)";

    }
});

