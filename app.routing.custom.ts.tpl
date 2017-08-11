import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MainComponent } from './main/main.component';
import { LoginComponent } from './login/login.component';
import { RoutesContainer } from "app/global.service";

RoutesContainer.addRootRouting({ path: 'home', component: MainComponent });
RoutesContainer.addRootRouting({ path: 'login', component: LoginComponent });
RoutesContainer.addChildrenRouting({ path: 'dashboard', loadChildren: './main/dashboard/dashboard.module#DashboardModule' });

export const routingCustom: ModuleWithProviders = RouterModule.forRoot(RoutesContainer.routesDefault);
