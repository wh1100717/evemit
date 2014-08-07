###
 * evemit
 * evemit.emptystack.net
 *
 * Copyright (c) 2014 Eric Wang
 * Licensed under the MIT license.
###

define (require, exports, module) ->
    'use strict'

    exports.bind = (el, eve, fn, priority) -> 
        el[if window.addEventListener? then "addEventListener" else "attachEvent"]("#{if window.addEventListener then '' else 'on'}#{eve}", fn, priority or false)

    exports.unbind = (el, eve, fn, priority) -> 
        el[if window.addEventListener? then "removeEventListener" else "detachEvent"]("#{if window.addEventListener then '' else 'on'}#{eve}", fn, priority or false)

    return