import { Component, OnInit, Input, ChangeDetectorRef, OnDestroy } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

import { ModalDirective } from 'ngx-bootstrap/modal';
import { ViewModel } from 'app/common/model/viewmodel';
import { <#className#>Service } from '../<#classNameLowerAndSeparator#>.service';
import { LocationHistoryService } from 'app/common/services/location.history';
import { ComponentBase } from "app/common/components/component.base";

@Component({
    selector: 'app-<#classNameLowerAndSeparator#>-create',
    templateUrl: './<#classNameLowerAndSeparator#>-create.component.html',
    styleUrls: ['./<#classNameLowerAndSeparator#>-create.component.css'],
})
export class <#className#>CreateComponent extends ComponentBase implements OnInit, OnDestroy {

    @Input() vm: ViewModel<any>;
 
    constructor(private <#classNameInstance#>Service: <#className#>Service, private route: ActivatedRoute, private router: Router, private ref: ChangeDetectorRef) {
		super();
		this.vm = null;
    }

    ngOnInit() {
        this.vm = this.<#classNameInstance#>Service.initVM();
        this.vm.actionDescription = "Cadastrar";

		this.<#classNameInstance#>Service.detectChanges(this.ref);
       
    }

    onSave(model) {

        this.<#classNameInstance#>Service.save(model).subscribe((result) => {
            this.router.navigate([LocationHistoryService.getLastNavigation()])
        });
    }

	ngOnDestroy() {
		this.<#classNameInstance#>Service.detectChangesStop();
    }

}
