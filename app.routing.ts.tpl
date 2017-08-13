import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MainComponent } from './main/main.component';
import { LoginComponent } from './login/login.component';
import { RoutesContainer } from "app/global.service";

const APP_ROUTES_CUSTOM: Routes = [

	{
        path: '', component: MainComponent, children: [

<#classItems#>

		    ]
    },

<#classItemsPrint#>

]


export const routingDefault: ModuleWithProviders = RouterModule.forRoot(APP_ROUTES_CUSTOM);
RoutesContainer.routesDefault = APP_ROUTES_CUSTOM;

