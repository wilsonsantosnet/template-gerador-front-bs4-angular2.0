﻿import { Component, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { ModalDirective } from 'ngx-bootstrap/modal';
import { FluxoTrabalhoStatusService } from '../fluxo-trabalho-status.service';

@Component({
    selector: 'app-<#classNameLowerAndSeparator#>-print',
    templateUrl: './f<#classNameLowerAndSeparator#>-print.component.html',
    styleUrls: ['./<#classNameLowerAndSeparator#>-print.component.css'],
})
export class <#className#>PrintComponent implements OnInit {

    vm: any;
    id: number;
    private sub: any;

    constructor(private <#classNameInstance#>Service: <#className#>Service, private route: ActivatedRoute) {

        this.vm = {};
    }

    ngOnInit() {

        this.sub = this.route.params.subscribe(params => {
            this.id = params['id']; 
        });

        this.vm = this.<#classNameInstance#>Service.initVM();

        this.<#classNameInstance#>Service.get({ id: this.id }).subscribe((data) => {
            this.vm.model = data.data;
        })

    }
    

   


}
