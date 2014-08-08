###
 * evemit
 * evemit.emptystack.net
 *
 * Copyright (c) 2014 Eric Wang
 * Licensed under the MIT license.
###

define (require, exports, module) ->
    'use strict'

    _isIE = if window.addEventListener? then false else true

    exports.bind = (el, eve, fn, priority) -> 
        el[if _isIE then "attachEvent" else "addEventListener"]("#{if _isIE then 'on' else ''}#{eve}", fn, priority or false)

    exports.unbind = (el, eve, fn, priority) -> 
        el[if _isIE then "detachEvent" else "removeEventListener"]("#{if _isIE then 'on' else ''}#{eve}", fn, priority or false)

    return