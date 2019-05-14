program SuppliersDemo;

uses
  Vcl.Forms,
  Suppliers in 'Suppliers.pas' {frmSuppliers},
  Functions in 'Functions.pas',
  SupplierDetail in 'SupplierDetail.pas' {frmSupplierDetail},
  MainDM in 'MainDM.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmSuppliers, frmSuppliers);
  Application.Run;
end.
