var fs = require('fs');
var parser = require("./manuel").parser;

fs.readFile('../tests/test1.m', 'utf8', function(err, data) {
  if (err)
    throw err;
  parser.parse(data);
  // console.log(data);
});

parser.yy = require("./scope");
