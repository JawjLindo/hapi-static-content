staticRoutes = (server, path) ->
    server.route {
        method: 'GET'
        path: '/{param*}'
        handler:
            directory:
                path: path
    }

module.exports = exports = (server, options) ->
    staticRoutes server, options.path