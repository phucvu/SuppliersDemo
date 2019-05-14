{
  Phuc Vu
  14 May 2019
}

unit SupplierDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ActnList, Vcl.DBActns, Vcl.ImgList, Data.DB, Datasnap.DBClient,
  Vcl.Menus;

type
  TfrmSupplierDetail = class(TForm)
    GroupBox2: TGroupBox;
    edCompanyCode: TDBEdit;
    edStreet: TDBEdit;
    edPostalCode: TDBEdit;
    edCity: TDBEdit;
    edCountry: TDBEdit;
    edCompanyName: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    edPoBox: TDBEdit;
    edPoBoxPostalCode: TDBEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edLanguage: TDBEdit;
    edTelephone: TDBEdit;
    edFax: TDBEdit;
    edEmail: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edCustomer: TDBEdit;
    edAuthorization: TDBEdit;
    edTradingPartner: TDBEdit;
    GroupBox5: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edIndustry: TDBEdit;
    edCarFreightGrp: TDBEdit;
    edServAgntProcGrp: TDBEdit;
    edSCAC: TDBEdit;
    Label14: TLabel;
    Label20: TLabel;
    edTransportZone: TDBEdit;
    GroupBox6: TGroupBox;
    edTermsAndConditions: TDBMemo;
    GroupBox7: TGroupBox;
    gridContacts: TDBGrid;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acCopy: TAction;
    btnInsert: TButton;
    btnDelete: TButton;
    btnPost: TButton;
    btnCancel: TButton;
    btnCopy: TButton;
    ImageList1: TImageList;
    acPost: TAction;
    acCancel: TAction;
    PopupMenu1: TPopupMenu;
    acInsert1: TMenuItem;
    Delete1: TMenuItem;
    acInsertContact: TDataSetInsert;
    acDeleteContact: TDataSetDelete;
    procedure acCopyExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPostExecute(Sender: TObject);
    procedure acPostUpdate(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acCancelUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FInsert: Boolean; // = false, in default
                      // = true, insert automatically
  end;

var
  frmSupplierDetail: TfrmSupplierDetail;

implementation

{$R *.dfm}

uses MainDM, Functions;

procedure TfrmSupplierDetail.acCancelExecute(Sender: TObject);
begin
  with dmMain do
  begin
    cdContacts.Cancel;
    cdSuppliers.Cancel;
  end;
end;

procedure TfrmSupplierDetail.acCancelUpdate(Sender: TObject);
begin
  acCancel.Enabled := (dmMain.cdSuppliers.State in [dsInsert, dsEdit])
                   or (dmMain.cdContacts.State in [dsInsert, dsEdit])
end;

procedure TfrmSupplierDetail.acCopyExecute(Sender: TObject);
begin
  acPost.Execute;
  dbCopyRecord(dmMain.cdSuppliers, dmMain.cdContacts);
end;

procedure TfrmSupplierDetail.acPostExecute(Sender: TObject);
begin
  with dmMain do
  begin
    dbPostDataSet(cdSuppliers);
    dbPostDataSet(cdContacts);
  end;
end;

procedure TfrmSupplierDetail.acPostUpdate(Sender: TObject);
begin
  acPost.Enabled := (dmMain.cdSuppliers.State in [dsInsert, dsEdit])
                 or (dmMain.cdContacts.State in [dsInsert, dsEdit])
end;

procedure TfrmSupplierDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (dmMain.cdSuppliers.State in [dsInsert, dsEdit]) then
    if MessageDlg('Do you want to save the record?',
                  mtConfirmation,
                  [mbYes, mbNo], 0) = mrYes then
    begin
      dbPostDataSet(dmMain.cdSuppliers);
      dbPostDataSet(dmMain.cdContacts);
    end
    else
    begin
      dmMain.cdSuppliers.Cancel;
      dmMain.cdContacts.Cancel;
    end;
end;

procedure TfrmSupplierDetail.FormCreate(Sender: TObject);
begin
  FInsert := False;
end;

procedure TfrmSupplierDetail.FormShow(Sender: TObject);
begin
  if FInsert then
    dmMain.cdSuppliers.Insert;
end;

end.
