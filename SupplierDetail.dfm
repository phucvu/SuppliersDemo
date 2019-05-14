object frmSupplierDetail: TfrmSupplierDetail
  Left = 0
  Top = 0
  Caption = 'Supplier'
  ClientHeight = 601
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    784
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 784
    Height = 104
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Company information'
    TabOrder = 0
    object Label1: TLabel
      Left = 78
      Top = 19
      Width = 90
      Height = 13
      Caption = 'Company Code (*)'
    end
    object Label3: TLabel
      Left = 139
      Top = 73
      Width = 29
      Height = 13
      Caption = 'Postal'
    end
    object Label4: TLabel
      Left = 549
      Top = 73
      Width = 39
      Height = 13
      Caption = 'Country'
    end
    object Label2: TLabel
      Left = 138
      Top = 46
      Width = 30
      Height = 13
      Caption = 'Street'
    end
    object Label11: TLabel
      Left = 334
      Top = 19
      Width = 44
      Height = 13
      Caption = 'Name (*)'
    end
    object Label12: TLabel
      Left = 359
      Top = 73
      Width = 19
      Height = 13
      Caption = 'City'
    end
    object edCompanyCode: TDBEdit
      Left = 178
      Top = 16
      Width = 121
      Height = 21
      DataField = 'CompanyCode'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edStreet: TDBEdit
      Left = 178
      Top = 43
      Width = 537
      Height = 21
      DataField = 'Street'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
    object edPostalCode: TDBEdit
      Left = 178
      Top = 70
      Width = 121
      Height = 21
      DataField = 'PostalCode'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object edCity: TDBEdit
      Left = 384
      Top = 70
      Width = 121
      Height = 21
      DataField = 'City'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
    end
    object edCountry: TDBEdit
      Left = 594
      Top = 70
      Width = 121
      Height = 21
      DataField = 'Country'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
    end
    object edCompanyName: TDBEdit
      Left = 384
      Top = 16
      Width = 331
      Height = 21
      DataField = 'CompanyName'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 106
    Width = 784
    Height = 50
    Anchors = [akLeft, akTop, akRight]
    Caption = 'PO Box address'
    TabOrder = 1
    object Label5: TLabel
      Left = 133
      Top = 19
      Width = 35
      Height = 13
      Caption = 'PO Box'
    end
    object Label6: TLabel
      Left = 349
      Top = 19
      Width = 29
      Height = 13
      Caption = 'Postal'
    end
    object edPoBox: TDBEdit
      Left = 174
      Top = 16
      Width = 121
      Height = 21
      DataField = 'PoBox'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edPoBoxPostalCode: TDBEdit
      Left = 384
      Top = 16
      Width = 121
      Height = 21
      DataField = 'PoBoxPostalCode'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 158
    Width = 784
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Communication'
    TabOrder = 2
    object Label7: TLabel
      Left = 121
      Top = 19
      Width = 47
      Height = 13
      Caption = 'Language'
    end
    object Label8: TLabel
      Left = 570
      Top = 19
      Width = 18
      Height = 13
      Caption = 'Fax'
    end
    object Label9: TLabel
      Left = 144
      Top = 46
      Width = 24
      Height = 13
      Caption = 'Email'
    end
    object Label10: TLabel
      Left = 328
      Top = 19
      Width = 50
      Height = 13
      Caption = 'Telephone'
    end
    object edLanguage: TDBEdit
      Left = 178
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Language'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edTelephone: TDBEdit
      Left = 384
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Telephone'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object edFax: TDBEdit
      Left = 594
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Fax'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
    object edEmail: TDBEdit
      Left = 178
      Top = 43
      Width = 121
      Height = 21
      DataField = 'Email'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 237
    Width = 784
    Height = 52
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Account control'
    TabOrder = 3
    object Label13: TLabel
      Left = 122
      Top = 19
      Width = 46
      Height = 13
      Caption = 'Customer'
    end
    object Label15: TLabel
      Left = 513
      Top = 19
      Width = 75
      Height = 13
      Caption = 'Trading Partner'
    end
    object Label16: TLabel
      Left = 314
      Top = 19
      Width = 64
      Height = 13
      Caption = 'Authorization'
    end
    object edCustomer: TDBEdit
      Left = 178
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Customer'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edAuthorization: TDBEdit
      Left = 384
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Authorization'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object edTradingPartner: TDBEdit
      Left = 594
      Top = 16
      Width = 121
      Height = 21
      DataField = 'TradingPartner'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 295
    Width = 784
    Height = 106
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Reference Data'
    TabOrder = 4
    object Label17: TLabel
      Left = 85
      Top = 73
      Width = 83
      Height = 13
      Caption = 'ServAgntProcGrp'
    end
    object Label18: TLabel
      Left = 141
      Top = 46
      Width = 27
      Height = 13
      Caption = 'SCAC'
    end
    object Label19: TLabel
      Left = 306
      Top = 46
      Width = 72
      Height = 13
      Caption = 'Car.freight grp'
    end
    object Label14: TLabel
      Left = 127
      Top = 19
      Width = 41
      Height = 13
      Caption = 'Industry'
    end
    object Label20: TLabel
      Left = 305
      Top = 73
      Width = 73
      Height = 13
      Caption = 'Transport zone'
    end
    object edIndustry: TDBEdit
      Left = 178
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Industry'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edCarFreightGrp: TDBEdit
      Left = 384
      Top = 43
      Width = 121
      Height = 21
      DataField = 'CarFreightGrp'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
    object edServAgntProcGrp: TDBEdit
      Left = 178
      Top = 70
      Width = 121
      Height = 21
      DataField = 'ServAgntProcGrp'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object edSCAC: TDBEdit
      Left = 178
      Top = 43
      Width = 121
      Height = 21
      DataField = 'SCAC'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object edTransportZone: TDBEdit
      Left = 384
      Top = 70
      Width = 121
      Height = 21
      DataField = 'TransportZone'
      DataSource = dmMain.dsSuppliers
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 407
    Width = 299
    Height = 150
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Terms and Conditions'
    TabOrder = 5
    object edTermsAndConditions: TDBMemo
      Left = 3
      Top = 16
      Width = 296
      Height = 131
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'TermsAndConditions'
      DataSource = dmMain.dsSuppliers
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GroupBox7: TGroupBox
    Left = 305
    Top = 407
    Width = 479
    Height = 150
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Contacts'
    TabOrder = 6
    object gridContacts: TDBGrid
      Left = 2
      Top = 15
      Width = 475
      Height = 133
      Align = alClient
      DataSource = dmMain.dsContacts
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ContactName'
          Title.Caption = 'Contact Name'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactEmail'
          Title.Caption = 'Email'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactTel'
          Title.Caption = 'Tel'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactFax'
          Title.Caption = 'Fax'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactDescription'
          Title.Caption = 'Description'
          Width = 100
          Visible = True
        end>
    end
  end
  object btnInsert: TButton
    Left = 5
    Top = 568
    Width = 75
    Height = 25
    Action = acInsert
    Anchors = [akLeft, akBottom]
    HotImageIndex = 0
    TabOrder = 7
  end
  object btnDelete: TButton
    Left = 80
    Top = 568
    Width = 75
    Height = 25
    Action = acDelete
    Anchors = [akLeft, akBottom]
    HotImageIndex = 0
    TabOrder = 8
  end
  object btnPost: TButton
    Left = 155
    Top = 568
    Width = 75
    Height = 25
    Action = acPost
    Anchors = [akLeft, akBottom]
    Caption = '&Post'
    TabOrder = 9
  end
  object btnCancel: TButton
    Left = 230
    Top = 568
    Width = 75
    Height = 25
    Action = acCancel
    Anchors = [akLeft, akBottom]
    Caption = '&Cancel'
    TabOrder = 10
  end
  object btnCopy: TButton
    Left = 305
    Top = 568
    Width = 75
    Height = 25
    Action = acCopy
    Anchors = [akLeft, akBottom]
    Caption = 'Copy'
    TabOrder = 11
  end
  object ActionList1: TActionList
    Left = 568
    Top = 312
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dmMain.dsSuppliers
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmMain.dsSuppliers
    end
    object acCopy: TAction
      Category = 'Dataset'
      Caption = 'acCopy'
      OnExecute = acCopyExecute
    end
    object acPost: TAction
      Caption = 'acPost'
      OnExecute = acPostExecute
      OnUpdate = acPostUpdate
    end
    object acCancel: TAction
      Caption = 'acCancel'
      OnExecute = acCancelExecute
      OnUpdate = acCancelUpdate
    end
    object acInsertContact: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dmMain.dsContacts
    end
    object acDeleteContact: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmMain.dsContacts
    end
  end
  object ImageList1: TImageList
    Left = 624
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 360
    object acInsert1: TMenuItem
      Action = acInsertContact
    end
    object Delete1: TMenuItem
      Action = acDeleteContact
    end
  end
end
