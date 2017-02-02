<div class="row" id="footer" ng-show="isLogged" ng-controller="globalController" ng-cloak>
    <div class="col-md-4 col-sm-4 col-xs-4 text-center">
        <form method="get" name="langForm">
            <input type="hidden" name="lang" id="selectedLanguage"/>
            <span class="clickable"><a ng-click="changeLanguage('fr_FR')">
                <img src="images/france-64.png" style="width: 24px;">
            </a>
            </span>
            <span class="clickable"><a ng-click="changeLanguage('en_EN')">
                <img src="images/united-kingdom-64.png" style="width: 24px;">
            </a>
            </span>
            <span class="clickable"><a ng-click="changeLanguage('it_IT')">
                <img src="images/italy-64.png" style="width: 24px;">
            </a>
            </span>
        </form>
    </div>

    <div class="col-md-4 col-sm-4 col-xs-4 text-center">&copy; 2016
        <span><i class="fa fa-bank"></i> SmartPath</span>
    </div>

    <div class="col-md-4 col-sm-4 col-xs-4 text-center">
        {{'panel.user.label'|translate}}</b>
        <span>{{loggedUser.lastName }}  {{loggedUser.firstName}}</span>
    </div>
</div>