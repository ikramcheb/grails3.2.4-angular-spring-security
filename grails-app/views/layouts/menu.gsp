<div class="top_nav" id="top_nav" role="navigation" ng-controller="loginController" ng-show="isLogged" ng-cloak>
    <ul class="nav navbar-nav row">
        <div class="nav toggle clickable">
            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
        </div>
        <li class="text-left">
            <a class="uppercase">portalesp v 2.2.1.beta</a>
        </li>
        <li style="width: 100px;"><a></a></li>
        <li class="text-right">
            <a class="uppercase"><i class="fa fa-calendar"></i>  {{date}}  <i
                    class="fa fa-clock-o"></i>  {{time}}</a>
        </li>
    </ul>
    <ul class="nav navbar-nav navbar-right" style="max-width: 200px;">
        <li>
            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
               aria-expanded="false">
                <i class="fa fa-user"
                   style="margin-right: 10px;"></i><span>{{loggedUser.firstName}} {{loggedUser.lastName}}</span>
                <icon class=" fa fa-angle-down"></icon>
            </a>
            <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                <li>
                    <a href="#/changePwd">
                        <span class="{{settingsTab=='changePwd'?'activeLink':''}}">
                            <i class="fa fa-unlock  pull-right"></i>
                            {{'menu.changePwd.label'|translate}}
                        </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="badge bg-blue pull-right">70%</span>
                        <span>Settings</span>
                    </a>
                </li>

                <li ng-click="accountInfoFn()" class="clickable">
                    <a>
                        <span>
                            <i class="fa fa-id-card  pull-right"></i>
                            {{'menu.account.label'|translate}}
                        </span>
                    </a>
                </li>
                <li ng-click="logOutFn()" class="clickable">
                    <a>
                        <strong>
                            <span class="text-danger">
                                <i class="fa fa-sign-out pull-right"></i>
                                {{'menu.logout.label'|translate}}
                            </span>
                        </strong>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
    <big-modal title="{{'menu.account.label'|translate}}"
               ng-show="accountInfo" visible="accountInfo">
        <div class="row fiveHundredXScroll">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <div class="row">
                            <div class="col-md-1 col-sm-1 col-xs-1 text-left">
                                <h2>
                                    <span>
                                        {{'form.title.account.info.label'|translate}}
                                    </span>
                                </h2>
                            </div>
                        </div>
                    </div>

                    <div class="x_content">
                        <uib-accordion close-others="oneAtATime">
                            <div uib-accordion-group heading="{{'form.label.client.label'|translate}}">
                                <div ng-if="!userInfo.client"
                                     class="text-danger">{{'form.data.empty.client'|translate}}</div>

                                <div>{{userInfo.client.companyName}}</div>
                            </div>

                            <div uib-accordion-group class="panel-default"
                                 heading=" {{'form.label.managedClients.label'|translate}}">
                                <div ng-if="userInfo.clientsToManage.length == 0"
                                     class="text-danger">{{'form.data.empty.clientsToManage'|translate}}</div>

                                <div ng-repeat="client in userInfo.clientsToManage">{{client.companyName}}</div>
                            </div>

                            <div uib-accordion-group class="panel-default"
                                 heading="{{'form.label.privileges.label'|translate}}">
                                <div ng-repeat="privilege in userInfo.role.privileges">{{privilege.name}}</div>
                            </div>

                        </uib-accordion>

                    </div>
                </div>
            </div>
        </div>
    </big-modal>
    <errors title="{{'modal.validation.title'|translate}}" visible="errorStatusModal">
        <div class="row">
            <span class="text-danger">
                <i class="fa fa-times"></i>
                {{errorStatus|translate}}
            </span>
        </div>
    </errors>
</div>
