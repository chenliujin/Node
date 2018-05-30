var csv = require('node-csv');

lines = 0;
csv.each('file.csv').on('data', function(data) {
    lines++;
}).on('end', function() {
    console.log(lines + ' lines parsed');
})
