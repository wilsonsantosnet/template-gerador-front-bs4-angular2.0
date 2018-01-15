<div class="gc-body__heading">
    <ol class="breadcrumb breadcrumb-app">
        <li class="breadcrumb-item"><a href="/">Home >> {{ vm.actionTitle }} >> Cadastrar</a></li>
    </ol>

    <div class="gc-heading__controls">
        <div class="container-fluid">
            <div class="row">
                <div class="col d-flex justify-content-end">
                    <a href="javascript:history.back()" class="btn btn-sm btn-outline-secondary mr-auto p-2">
                        <span class="fa fa-arrow-left" aria-hidden="true"></span> {{vm.generalInfo.voltar.label}}
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h2 class="title--main">
                    <span class="fa fa-pencil" aria-hidden="true"></span> {{ vm.actionTitle }} - <small>{{ vm.actionDescription }}</small>
                </h2>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="box">

        <div class="row">
            <div class="col">
                <div class="card gc-grid">
                    <div class="card-block">
                      <form (ngSubmit)="onSave(vm.model)" novalidate>
                        <app-<#classNameLowerAndSeparator#>-container-create [(vm)]="vm"></app-<#classNameLowerAndSeparator#>-container-create>
                        <div class="modal-footer">
                          <a href="javascript:history.back()" class="btn btn-default btn-default-app">
                          <i class="fa fa-reply"></i> Voltar
                          </a>
                          <button type="submit" class="btn btn-success btn-success-app" [disabled]="vm != null && vm.form.invalid">Salvar</button>
                        </div>
                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
