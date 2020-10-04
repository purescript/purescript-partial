"use strict";

// module Partial

exports._crashWith = function () {
  return function (msg) {
    throw new Error(msg);
  };
};
