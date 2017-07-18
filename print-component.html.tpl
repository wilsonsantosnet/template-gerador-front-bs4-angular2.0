﻿<div class="modal-dialog modal-lg">
  <div class="modal-content">
    <div class="modal-header">
      <h3><i class="fa fa-edit"></i> {{ vm.actionTitle }}</h3>
      <p>{{ vm.actionDescription }}</p>
    </div>
    <div class="modal-body">
      <app-<#classNameLowerAndSeparator#>-details [(vm)]="vm"></app-<#classNameLowerAndSeparator#>-details>
    </div>
    <div class="modal-footer">
      <a href="javascript:history.back()" class="btn btn-sm btn-outline-secondary mr-auto p-2">
        <span class="fa fa-arrow-left" aria-hidden="true"></span> Voltar
      </a>
      <button class="btn btn-success" type="button" (click)="onPrint()"><i class="fa fa-print"></i> Imprimir</button>
    </div>
  </div>
</div>

