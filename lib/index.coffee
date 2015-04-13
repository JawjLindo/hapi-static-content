module.exports = exports = (plugin, options, next) ->
    require('./config/routes') plugin, options
    next()