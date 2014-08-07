/*! evemit - v0.1.0 - 2014-08-08
* evemit.emptystack.net
* Copyright (c) 2014 Eric Wang; Licensed MIT */
// Generated by CoffeeScript 1.7.1

/*
 * evemit
 * evemit.emptystack.net
 *
 * Copyright (c) 2014 Eric Wang
 * Licensed under the MIT license.
 */
define(function(require, exports, module) {
  'use strict';
  exports.bind = function(el, eve, fn, priority) {
    return el[window.addEventListener != null ? "addEventListener" : "attachEvent"]("" + (window.addEventListener ? '' : 'on') + eve, fn, priority || false);
  };
  exports.unbind = function(el, eve, fn, priority) {
    return el[window.addEventListener != null ? "removeEventListener" : "detachEvent"]("" + (window.addEventListener ? '' : 'on') + eve, fn, priority || false);
  };
});