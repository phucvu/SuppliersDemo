object frmSuppliers: TfrmSuppliers
  Left = 0
  Top = 0
  Caption = 'Suppliers'
  ClientHeight = 441
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    784
    441)
  PixelsPerInch = 96
  TextHeight = 13
  object gridSuppliers: TDBGrid
    Left = 0
    Top = 31
    Width = 783
    Height = 240
    Anchors = [akLeft, akTop, akRight, akBottom]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridSuppliersDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CompanyCode'
        Title.Caption = 'Company Code'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompanyName'
        Title.Caption = 'Company Name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Street'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PostalCode'
        Title.Caption = 'Postal Code'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Language'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telephone'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fax'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dataline'
        Title.Caption = 'Data line'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Industry'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCAC'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CarFreightGrp'
        Title.Caption = 'Car.Freight Grp'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServAgntProcGrp'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TransportZone'
        Title.Caption = 'Transport Zone'
        Width = 80
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 275
    Width = 472
    Height = 165
    Anchors = [akLeft, akBottom]
    Caption = 'Terms and Conditions'
    TabOrder = 1
    object edTermsAndConditions: TDBMemo
      Left = 2
      Top = 15
      Width = 468
      Height = 148
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      DataField = 'TermsAndConditions'
      DataSource = dmMain.dsSuppliers
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 476
    Top = 275
    Width = 307
    Height = 165
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Contacts'
    TabOrder = 2
    object gridContacts: TDBGrid
      Left = 2
      Top = 15
      Width = 303
      Height = 148
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = gridContactsDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ContactName'
          Title.Caption = 'Contact Name (*)'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactEmail'
          Title.Caption = 'Email (*)'
          Width = 200
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
          Width = 200
          Visible = True
        end>
    end
  end
  object btnInsert: TButton
    Left = 0
    Top = 3
    Width = 75
    Height = 25
    Action = acInsert
    Caption = '&Insert'
    HotImageIndex = 0
    TabOrder = 3
  end
  object btnDelete: TButton
    Left = 76
    Top = 3
    Width = 75
    Height = 25
    Action = acDelete
    HotImageIndex = 0
    TabOrder = 4
  end
  object btnCopy: TButton
    Left = 151
    Top = 3
    Width = 75
    Height = 25
    Action = acCopy
    Caption = 'Copy'
    TabOrder = 5
  end
  object ActionList1: TActionList
    Left = 32
    Top = 88
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dmMain.dsSuppliers
    end
    object acInsert: TAction
      Caption = 'acInsert'
      OnExecute = acInsertExecute
    end
    object acView: TAction
      Caption = 'acView'
      OnExecute = acViewExecute
      OnUpdate = acViewUpdate
    end
    object acCopy: TAction
      Caption = 'acCopy'
      OnExecute = acCopyExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 88
    object acInsert1: TMenuItem
      Action = acInsert
      Caption = 'Insert'
    end
    object Delete1: TMenuItem
      Action = acDelete
    end
    object acView1: TMenuItem
      Action = acView
      Caption = 'Show'
    end
  end
end
