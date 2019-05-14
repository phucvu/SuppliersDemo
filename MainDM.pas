{
  Vu Ngoc Hong Phuc
  Suppliers Demo
  Main componets:
    https://edn.embarcadero.com/article/41353
}

unit MainDM;

interface

uses
  Vcl.Controls, Vcl.Dialogs, Vcl.Forms, System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.Provider;

type
  TdmMain = class(TDataModule)
    cdSuppliers: TClientDataSet;
    dsSuppliers: TDataSource;
    cdContacts: TClientDataSet;
    dsContacts: TDataSource;
    cdSuppliersCompanyCode: TStringField;
    cdSuppliersCompanyName: TStringField;
    cdSuppliersStreet: TStringField;
    cdSuppliersPostalCode: TStringField;
    cdSuppliersCity: TStringField;
    cdSuppliersDescription: TBlobField;
    cdSuppliersTermsAndConditions: TBlobField;
    cdSuppliersPoBox: TStringField;
    cdSuppliersPoBoxPostalCode: TStringField;
    cdSuppliersLanguage: TStringField;
    cdSuppliersTelephone: TStringField;
    cdSuppliersFax: TStringField;
    cdSuppliersEmail: TStringField;
    cdSuppliersDataline: TStringField;
    cdSuppliersCustomer: TStringField;
    cdSuppliersAuthorization: TStringField;
    cdSuppliersTradingPartner: TStringField;
    cdSuppliersCorporateGroup: TStringField;
    cdSuppliersTaxNumber1: TStringField;
    cdSuppliersTaxNumberType: TStringField;
    cdSuppliersTaxNumber2: TStringField;
    cdSuppliersTaxNumber3: TStringField;
    cdSuppliersFiscalAddress: TStringField;
    cdSuppliersLocationNo1: TStringField;
    cdSuppliersLocationNo2: TStringField;
    cdSuppliersIndustry: TStringField;
    cdSuppliersSCAC: TStringField;
    cdSuppliersCarFreightGrp: TStringField;
    cdSuppliersServAgntProcGrp: TStringField;
    cdSuppliersTransportZone: TStringField;
    cdSuppliersContacts: TDataSetField;
    cdSuppliersCountry: TStringField;
    cdContactsContactName: TStringField;
    cdContactsContactEmail: TStringField;
    cdContactsContactTel: TStringField;
    cdContactsContactFax: TStringField;
    cdContactsContactDescription: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdSuppliersBeforeDelete(DataSet: TDataSet);
    procedure cdSuppliersAfterInsert(DataSet: TDataSet);
    procedure cdSuppliersBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LoadSampleData();
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

const
  dataFileName = 'data.xml';

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Functions;

{$R *.dfm}

procedure TdmMain.LoadSampleData();
begin
  cdSuppliers.Insert;
  cdSuppliers.FieldByName('CompanyCode').Value := '1001';
  cdSuppliers.FieldByName('CompanyName').Value := 'Apple';
  cdSuppliers.FieldByName('Language').Value := 'English';
  cdSuppliers.Post;

  cdContacts.Insert;
  cdContacts.FieldByName('ContactName').Value := 'Accounting';
  cdContacts.FieldByName('ContactEmail').Value := 'any@any.com';
  cdContacts.FieldByName('ContactTel').Value := '02345678';
  cdContacts.Post;

  cdSuppliers.Insert;
  cdSuppliers.FieldByName('CompanyCode').Value := '1002';
  cdSuppliers.FieldByName('CompanyName').Value := 'Google';
  cdSuppliers.FieldByName('Language').Value := 'English';
  cdSuppliers.Post;

  cdContacts.Insert;
  cdContacts.FieldByName('ContactName').Value := 'Technical Support';
  cdContacts.FieldByName('ContactEmail').Value := 'contact@any.com';
  cdContacts.FieldByName('ContactTel').Value := '02345678';
  cdContacts.Post;

  cdSuppliers.Insert;
  cdSuppliers.FieldByName('CompanyCode').Value := '1003';
  cdSuppliers.FieldByName('CompanyName').Value := 'Microsoft';
  cdSuppliers.FieldByName('Language').Value := 'English';
  cdSuppliers.Post;

  cdContacts.Insert;
  cdContacts.FieldByName('ContactName').Value := 'Mr/Ms';
  cdContacts.FieldByName('ContactEmail').Value := 'abc@abc.com';
  cdContacts.FieldByName('ContactTel').Value := '02345678';
  cdContacts.Post;
end;

procedure TdmMain.cdSuppliersAfterInsert(DataSet: TDataSet);
begin
  cdSuppliers.FieldByName('CompanyCode').FocusControl;
end;

procedure TdmMain.cdSuppliersBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Are you sure to delete this record?',
                 mtConfirmation,
                 [mbYes, mbNo], 0) <> mrYes then
  begin
    Abort;
    Exit;
  end;

  // delete all detail records
  while not cdContacts.IsEmpty do
    cdContacts.Delete;
end;

procedure TdmMain.cdSuppliersBeforePost(DataSet: TDataSet);
begin
  dbCheckRequiredFields(DataSet);
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  // Create or load suppliers data from file
  cdSuppliers.FileName := ExtractFilePath(Application.ExeName) + dataFileName;
  if FileExists(cdSuppliers.FileName) then
    cdSuppliers.Open
  else
  begin
    cdSuppliers.CreateDataSet;
    LoadSampleData();
  end;
  cdSuppliers.LogChanges := False;
end;

end.
