//import { NgModule } from '@angular/core';
//import { BrowserModule } from '@angular/platform-browser';

//import { AppRoutingModule } from './app-routing.module';
//import { AppComponent } from './app.component';

////HRMS.Specific Components
//import { AuthenticationComponent } from './authentication/authentication.component';
//import { SigninComponent } from './authentication/signin/signin.component';
//import { SignupComponent } from './authentication/signup/signup.component';
//import { LogoutComponent } from './authentication/logout/logout.component';
//import { UnauthorizedComponent } from './authentication/unauthorized/unauthorized.component';
//import { ApprovalComponent } from './authentication/approval/approval.component';
//import { ActivationComponent } from './authentication/activation/activation.component';
//import { DashboardComponent } from './dashboard/dashboard.component';
//import { AdminComponent } from './dashboard/admin/admin.component';
//import { ConfigurationComponent } from './configuration/configuration.component';
//import { HrComponent } from './dashboard/hr/hr.component';
//import { HireeComponent } from './dashboard/hiree/hiree.component';
//import { HireeroleComponent } from './configuration/hireerole/hireerole.component';
//import { TestcategoryComponent } from './configuration/testcategory/testcategory.component';
//import { SetupaptitudeComponent } from './configuration/setupaptitude/setupaptitude.component';
////HRMS.Specific Components End

////HRMS.Template Components
//import { CommonComponent } from './common/common.component';
//import { FooterComponent } from './common/footer/footer.component';
//import { HeaderComponent } from './common/header/header.component';
//import { InternalerrorComponent } from './common/internalerror/internalerror.component';
//import { NotfoundComponent } from './common/notfound/notfound.component';
//import { SidebarComponent } from './common/sidebar/sidebar.component';
//import { CustomizerComponent } from './customizer/customizer.component';
////HRMS.Template Components

//@NgModule({
//  declarations: [
//    AppComponent,
//    AuthenticationComponent,
//    SigninComponent,
//    SignupComponent,
//    LogoutComponent,
//    UnauthorizedComponent,
//    ApprovalComponent,
//    ActivationComponent,
//    DashboardComponent,
//    AdminComponent,
//    ConfigurationComponent,
//    HrComponent,
//    HireeComponent,
//    HireeroleComponent,
//    TestcategoryComponent,
//    SetupaptitudeComponent,
//    CommonComponent,
//    FooterComponent,
//    HeaderComponent,
//    InternalerrorComponent,
//    NotfoundComponent,
//    SidebarComponent,
//    CustomizerComponent
//  ],
//  imports: [
//    BrowserModule,
//    AppRoutingModule
//  ],
//  providers: [],
//  bootstrap: [AppComponent]
//})
//export class AppModule { }


import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
