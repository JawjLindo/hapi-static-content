module.exports = exports = (lab) ->
    Hapi = require 'hapi'
    should = require('chai').should()
    _ = require 'underscore'
    
    lab.experiment 'The static content plugin', ->
        server = null
        
        lab.beforeEach (done) ->
            server = new Hapi.Server
            server.connection()
            done()
        
        lab.test 'successfully loads', (done) ->
            server.register {
                register: require '../'
                options:
                    path: __dirname
            }, (err) ->
                should.not.exist err
                
                route = _.find server.table()[0].table, (row) ->
                    row.path is '/{param*}'
                should.exist route
                
                done()