var csv = require('node-csv').createParser();

csv.parseFile('./file.csv', function(err, data) {
  data.forEach(
    function(v, i, a) {
      console.log(v[2])
    }
  )
});

