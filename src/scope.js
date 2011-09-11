/*
 * Defines actions attached to the parser
 */
if (typeof require !== 'undefined') {
    var scope = exports;
} else {
    var scope = parser.yy;
}

scope.stuff = function stuff(x) {
  console.log("stuff "+x);
  return "return value";
};


