﻿<div class="well">
  <h3><i class="fa fa-edit"></i> {{ vm.actionTitle }}</h3>
  <p>{{ vm.actionDescription }}</p>
</div>

<form (ngSubmit)="onSave(vm.model)" (keyup.enter)="onSave(vm.model)" novalidate>

  <app-<#classNameLowerAndSeparator#>-container-edit [(vm)]="vm"></app-<#classNameLowerAndSeparator#>-container-edit>

  <div class="modal-footer">
    <a href="javascript:history.back()" class="btn btn-primary btn-sm" >
      <i class="fa fa-reply"></i> Voltar
    </a>
    <button type="submit" class="btn btn-success" [disabled]="vm.form.invalid">Salvar</button>
  </div>
</form>
