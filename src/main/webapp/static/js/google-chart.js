(function () {
    google.charts.load('current', {'packages':['bar']});  // load chart bar type
    google.charts.setOnLoadCallback(drawChart);  // function drawing

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'Argentina', 'Brasil', 'Colombia', 'Chile', 'Bolivia', 'Ecuador', 'Peru', 'Paraguay', 'Ururguay', 'Venezuela'],
            ['2005', 1000, 400, 200, 1170, 460, 250, 1170, 460, 250, 660],
            ['2006', 1170, 460, 250, 1170, 460, 250, 1170, 460, 250, 660],
            ['2007', 660, 1120, 300, 1170, 460, 250, 1170, 460, 250, 660],
            ['2008', 1000, 540, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2009', 100, 800, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2010', 130, 540, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2011', 180, 540, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2012', 1010, 600, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2013', 900, 700, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2014', 800, 540, 350, 1170, 460, 250, 1170, 460, 250, 660],
            ['2015', 130, 540, 350, 1170, 460, 250, 1170, 460, 250, 660]
        ]);

        var options = {
            chart: {
                title: 'Reportes de salud',
                subtitle: 'Argentina, Brasil, Colombia, Chile, Bolivia, Ecuador, Peru, Paraguay, Ururguay, Venezuela: 2005-2015',
            }
        };

        var chart = new google.charts.Bar(document.getElementById('chart-content-material'));

        chart.draw(data);
    }
})();