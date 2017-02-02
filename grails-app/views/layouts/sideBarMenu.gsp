<div id="sidebar-menu" class="main_menu_side hidden-print main_menu" ng-show="isLogged" ng-cloak>
    <div class="menu_section">
        <h3>{{'menu.sideBar.title.label'|translate}}</h3>
        <ul class="nav side-menu uppercase">
            <li class="clickable" ng-show="hasPrivileges('patient')">
                <a><i class="fa fa-user"></i> {{'menu.sideBar.patient.label'|translate}}
                    <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                    <li class="{{currentPage=='patient'?'current-page':''}}">
                        <a href="#/patient">{{'menu.sideBar.patient.label'|translate}}</a>
                    </li>
                </ul>
            </li>
            <li class="clickable" ng-show="hasPrivileges('request')">
                <a><i class="fa fa-edit"></i> {{'menu.sideBar.request.label'|translate}}
                    <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                    <li class="{{currentPage=='request'?'current-page':''}}" ng-show="hasPrivileges('request')">
                        <a href="#/request">{{'menu.sideBar.request.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='csvFTP'?'current-page':''}}" ng-show="hasPrivileges('csvFTP')">
                        <a href="#/csvFTP">{{'menu.sideBar.downloadCSV.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='requestHistoric'?'current-page':''}}"
                        ng-show="hasPrivileges('requestHistoric')">
                        <a href="#/requestHistoric">{{'menu.sideBar.requestHistoric.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='csvFile'?'current-page':''}}" ng-show="hasPrivileges('csvFile')">
                        <a href="#/csvFile">{{'menu.sideBar.requestLog.label'|translate}}</a>
                    </li>
                </ul>
            </li>
            <li class="clickable" ng-show="hasPrivileges('configuration')">
                <a><i class="fa fa-book"></i> {{'menu.sideBar.report.label'|translate}}
                    <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                    <li class="{{currentPage=='ragService'?'current-page':''}}"
                        ng-show="hasPrivileges('administration') && hasPrivileges('ragService')">
                        <a href="#/ragService">{{'menu.sideBar.rag.service.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='reportCatalog'?'current-page':''}}"
                        ng-show="hasPrivileges('administration') && hasPrivileges('reportCatalog')">
                        <a href="#/reportCatalog">{{'menu.sideBar.report.catalog.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='diagnosticTemplate'?'current-page':''}}"
                        ng-show="hasPrivileges('diagnosticTemplate')">
                        <a href="#/diagnosticTemplate">{{'menu.sideBar.diagnosticTemplate.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='postedReports'?'current-page':''}}"
                        ng-show="hasPrivileges('postedReports')">
                        <a href="#/postedReports">{{'menu.sideBar.postedReports.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='document'?'current-page':''}}"
                        ng-show="hasPrivileges('document')">
                        <a href="#/document">{{'menu.sideBar.document.label'|translate}}</a>
                    </li>
                </ul>
            </li>
            <li class="clickable" ng-show="hasPrivileges('administration') || hasPrivileges('visit')">
                <a ng-if="!hasPrivileges('visit')"><i class="fa fa-gears"></i>
                    {{'menu.sideBar.administration.label'|translate}}
                    <span
                            class="fa fa-chevron-down"></span></a>
                <a ng-if="hasPrivileges('visit')"><i class="fa fa-file-text-o"></i>
                    {{'menu.sideBar.catalog.label'|translate}}
                    <span
                            class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                    <li class="{{currentPage=='requestCatalog'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('requestCatalog')">
                        <a href="#/requestCatalog">{{'menu.sideBar.requestCatalog.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='branch'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('branch')">
                        <a href="#/branch">{{'menu.sideBar.branch.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='icdo'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('icdo')">
                        <a href="#/icdo">{{'menu.sideBar.icdo.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='siapec'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('siapec')">
                        <a href="#/siapec">{{'menu.sideBar.siapec.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='snomed'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('snomed')">
                        <a href="#/snomed">{{'menu.sideBar.snomed.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='nomenclatura'?'current-page':''}}"
                        ng-show="hasPrivileges('nomenclatura')">
                        <a href="#/nomenclatura">{{'menu.sideBar.nomenclatura.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='nomenclatureHistoric'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('nomenclatureHistoric')">
                        <a href="#/nomenclatureHistoric">{{'menu.sideBar.nomenclatureHistoric.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='nazLocal'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('nazLocal')">
                        <a href="#/nazLocal">{{'menu.sideBar.nazLocal.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='payment'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('payment')">
                        <a href="#/payment">{{'menu.sideBar.payment.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='tvaCode'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('tvaCode')">
                        <a href="#/tvaCode">{{'menu.sideBar.tva.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='convention'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('convention')">
                        <a href="#/convention">{{'menu.sideBar.convention.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='client'?'current-page':''}}" ng-show="hasPrivileges('client')">
                        <a href="#/client">{{'menu.sideBar.client.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='notification'?'current-page':''}}"
                        ng-show="hasPrivileges('notification')">
                        <a href="#/notification">{{'menu.sideBar.notification.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='antecedent'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('antecedent')">
                        <a href="#/antecedent">{{'menu.sideBar.antecedent.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='illnessEvent'?'current-page':''}}"
                        ng-show="hasPrivileges('configuration') && hasPrivileges('illnessEvent')">
                        <a href="#/illnessEvent">{{'menu.sideBar.illnessEvent.label'|translate}}</a>
                    </li>
                </ul>
            </li>
            <li class="clickable" ng-show="hasPrivileges('resources')">
                <a><i class="fa fa-briefcase"></i>{{'menu.sideBar.resources.label'|translate}} <span
                        class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                    <li class="{{currentPage=='role'?'current-page':''}}" ng-show="hasPrivileges('role')">
                        <a href="#/role">{{'menu.sideBar.role.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='user'?'current-page':''}}" ng-show="hasPrivileges('user')">
                        <a href="#/user">{{'menu.sideBar.user.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='room'?'current-page':''}}" ng-show="hasPrivileges('room')">
                        <a href="#/room">{{'menu.sideBar.room.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='instrument'?'current-page':''}}" ng-show="hasPrivileges('instrument')">
                        <a href="#/instrument">{{'menu.sideBar.instrument.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='doctor'?'current-page':''}}" ng-show="hasPrivileges('user')">
                        <a href="#/doctor">{{'menu.sideBar.doctor.label'|translate}}</a>
                    </li>
                    <li class="{{currentPage=='ambulatory'?'current-page':''}}" ng-show="hasPrivileges('user')">
                        <a href="#/ambulatory">{{'menu.sideBar.ambulatory.label'|translate}}</a>
                    </li>
                    <li class="clickable" ng-show="hasPrivileges('config')">
                        <a href="#/config">{{'menu.sideBar.configurationCSVUploadRequests.label'|translate}}
                        </a>
                    </li>
                    <li class="clickable" ng-show="hasPrivileges('repositoryTemplate') || hasPrivileges('serviceDoc')">
                        <a>{{'menu.sideBar.configReport.label'|translate}} <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="display: none">
                            <li class="sub_menu" ng-show="hasPrivileges('serviceDoc')">
                                <a href="#/serviceDocument">{{'menu.sideBar.serviceDoc.label'|translate}}</a>
                            </li>
                            <li ng-show="hasPrivileges('repositoryTemplate')">
                                <a href="#/docDefinition">{{'menu.sideBar.DocDefinition.label'|translate}}</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>

            <li class="clickable" ng-show="hasPrivileges('signDoc')">
                <a href="#/signatory"><i class="fa fa-key"></i>{{'menu.sideBar.configurationSignature.label'|translate}}
                </a>
            </li>
        </ul>
    </div>
</div>


