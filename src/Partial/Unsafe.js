"use strict";

// module Partial.Unsafe

exports.unsafePartial = function (f) {
  return f();
};

exports.showAny = function (x) {
  return JSON.stringify(x);
};

exports.concatString = function (s1) {
  return function (s2) {
    return s1 + s2;
  };
};
