(function($){
    $(function(){

        // materialize config
        $('.button-collapse').sideNav();
        $('.parallax').parallax();
        $('select').material_select();


        // statistic request        
        $("#statistics-form").on("submit", function (event) {
            console.info("Enviar");

            var request = $.ajax({
                url: '/statistics',
                method: 'POST',
                contentType: "application/json",
                data: JSON.stringify({
                    serie: $('#serie-select').val(),
                    countries: $('#countries-select').val()
                })
            });

            request.success(function (data) {
                var stats = data['stats'];
                //console.log("success");
                // console.info(stats);

                // pluck extracts only the indicated field: _.pluck(list, propertyName)
                var countries =_.union(['Años'], _.unique(_.pluck(stats, 'countryName'))); // first row

                stats = _.groupBy(stats, function(item){return item.anio; });  // group by year

                var stats_keys = _.keys(stats);  // key's stats

                var chart_data = [];  // all data

                chart_data.push(countries);  // add first row
                stats_keys.forEach(function (item) {
                    var row = [item];
                    row = row.concat(_.pluck(stats[item], 'value'));

                    chart_data.push(row);
                });


                // load solo una vez ...
                //google.charts.load('current', {'packages':['bar']});  // load chart bar type
                google.charts.setOnLoadCallback(drawChart);  // function drawing

                function drawChart() {
                    var data = google.visualization.arrayToDataTable(chart_data);
                    var chart = new google.charts.Bar(document.getElementById('chart-content-material'));

                    chart.draw(data);
                }




            });
            
            request.fail(function (data) {
                console.log("Fail");
                console.info(data);
            });

            event.preventDefault();
        });
        
        

    }); // end of document ready
})(jQuery); // end of jQuery name space