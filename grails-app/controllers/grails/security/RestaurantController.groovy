package grails.security

import grails.converters.JSON
import grails.rest.RestfulController


@grails.plugin.springsecurity.annotation.Secured(['ROLE_READ'])
class RestaurantController extends RestfulController{

    RestaurantController(){
        super(Restaurant)
    }

    def index() { }

    def list() {
       render Restaurant.list() as JSON
    }
}
