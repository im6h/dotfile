"use strict";
exports.__esModule = true;
exports.hello = exports.main = void 0;
var bar_1 = require("./bar");
function main(a) {
    return a + 1;
}
exports.main = main;
function hello() {
    console.log("Hello world");
}
exports.hello = hello;
var u = {
    name: 'Vu Hai Dang',
    age: 24
};
console.info(u);
main(1);
bar_1.bar();
