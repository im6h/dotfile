"use strict";
exports.__esModule = true;
exports.bar = void 0;
var foo_1 = require("./foo");
function bar() {
    console.log('run from bar');
    foo_1.foo();
}
exports.bar = bar;
