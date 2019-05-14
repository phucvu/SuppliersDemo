unit Suppliers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ActnList, Vcl.DBActns, Vcl.Menus;

type
  TfrmSuppliers = class(TForm)
    gridSuppliers: TDBGrid;
    GroupBox2: TGroupBox;
    edTermsAndConditions: TDBMemo;
    GroupBox3: TGroupBox;
    gridContacts: TDBGrid;
    btnInsert: TButton;
    btnDelete: TButton;
    ActionList1: TActionList;
    acDelete: TDataSetDelete;
    acInsert: TAction;
    acView: TAction;
    PopupMenu1: TPopupMenu;
    acInsert1: TMenuItem;
    Delete1: TMenuItem;
    btnCopy: TButton;
    acCopy: TAction;
    acView1: TMenuItem;
    procedure gridSuppliersDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acViewExecute(Sender: TObject);
    procedure acInsertExecute(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
    procedure gridContactsDblClick(Sender: TObject);
    procedure acCopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuppliers: TfrmSuppliers;

implementation

{$R *.dfm}

uses SupplierDetail, MainDM, Functions;

procedure TfrmSuppliers.acCopyExecute(Sender: TObject);
begin
  dbCopyRecord(dmMain.cdSuppliers, dmMain.cdContacts);
end;

procedure TfrmSuppliers.acInsertExecute(Sender: TObject);
begin
  if not dmMain.cdSuppliers.IsEmpty then
    with TfrmSupplierDetail.Create(Self) do
    try
      FInsert := True;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmSuppliers.acViewExecute(Sender: TObject);
begin
  if not dmMain.cdSuppliers.IsEmpty then
    with TfrmSupplierDetail.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmSuppliers.acViewUpdate(Sender: TObject);
begin
  acView.Enabled := not dmMain.cdSuppliers.IsEmpty;
end;

procedure TfrmSuppliers.FormCreate(Sender: TObject);
begin
  // assign datasource
  gridSuppliers.DataSource := dmMain.dsSuppliers;
  edTermsAndConditions.DataSource := dmMain.dsSuppliers;

  gridContacts.DataSource := dmMain.dsContacts;
end;

procedure TfrmSuppliers.gridContactsDblClick(Sender: TObject);
begin
  acView.Execute;
end;

procedure TfrmSuppliers.gridSuppliersDblClick(Sender: TObject);
begin
  acView.Execute;
end;

end.
