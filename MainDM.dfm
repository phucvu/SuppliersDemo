object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 331
  Width = 484
  object cdSuppliers: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdSuppliersAfterInsert
    BeforePost = cdSuppliersBeforePost
    BeforeDelete = cdSuppliersBeforeDelete
    Left = 48
    Top = 48
    object cdSuppliersCompanyCode: TStringField
      FieldName = 'CompanyCode'
      Required = True
      Size = 255
    end
    object cdSuppliersCompanyName: TStringField
      FieldName = 'CompanyName'
      Required = True
      Size = 255
    end
    object cdSuppliersStreet: TStringField
      FieldName = 'Street'
      Size = 255
    end
    object cdSuppliersPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 255
    end
    object cdSuppliersCity: TStringField
      FieldName = 'City'
      Size = 255
    end
    object cdSuppliersCountry: TStringField
      FieldName = 'Country'
      Size = 255
    end
    object cdSuppliersDescription: TBlobField
      FieldName = 'Description'
      Size = 80
    end
    object cdSuppliersTermsAndConditions: TBlobField
      FieldName = 'TermsAndConditions'
      Size = 80
    end
    object cdSuppliersPoBox: TStringField
      FieldName = 'PoBox'
      Size = 255
    end
    object cdSuppliersPoBoxPostalCode: TStringField
      FieldName = 'PoBoxPostalCode'
      Size = 255
    end
    object cdSuppliersLanguage: TStringField
      FieldName = 'Language'
    end
    object cdSuppliersTelephone: TStringField
      FieldName = 'Telephone'
      Size = 100
    end
    object cdSuppliersFax: TStringField
      FieldName = 'Fax'
      Size = 100
    end
    object cdSuppliersEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object cdSuppliersDataline: TStringField
      FieldName = 'Dataline'
      Size = 255
    end
    object cdSuppliersCustomer: TStringField
      FieldName = 'Customer'
      Size = 255
    end
    object cdSuppliersAuthorization: TStringField
      FieldName = 'Authorization'
      Size = 255
    end
    object cdSuppliersTradingPartner: TStringField
      FieldName = 'TradingPartner'
      Size = 255
    end
    object cdSuppliersCorporateGroup: TStringField
      FieldName = 'CorporateGroup'
      Size = 255
    end
    object cdSuppliersTaxNumber1: TStringField
      FieldName = 'TaxNumber1'
      Size = 30
    end
    object cdSuppliersTaxNumberType: TStringField
      FieldName = 'TaxNumberType'
      Size = 10
    end
    object cdSuppliersTaxNumber2: TStringField
      FieldName = 'TaxNumber2'
      Size = 30
    end
    object cdSuppliersTaxNumber3: TStringField
      FieldName = 'TaxNumber3'
      Size = 30
    end
    object cdSuppliersFiscalAddress: TStringField
      FieldName = 'FiscalAddress'
      Size = 30
    end
    object cdSuppliersLocationNo1: TStringField
      FieldName = 'LocationNo1'
      Size = 255
    end
    object cdSuppliersLocationNo2: TStringField
      FieldName = 'LocationNo2'
      Size = 255
    end
    object cdSuppliersIndustry: TStringField
      FieldName = 'Industry'
      Size = 255
    end
    object cdSuppliersSCAC: TStringField
      FieldName = 'SCAC'
      Size = 255
    end
    object cdSuppliersCarFreightGrp: TStringField
      FieldName = 'CarFreightGrp'
      Size = 255
    end
    object cdSuppliersServAgntProcGrp: TStringField
      FieldName = 'ServAgntProcGrp'
      Size = 255
    end
    object cdSuppliersTransportZone: TStringField
      FieldName = 'TransportZone'
      Size = 255
    end
    object cdSuppliersContacts: TDataSetField
      FieldName = 'Contacts'
    end
  end
  object dsSuppliers: TDataSource
    DataSet = cdSuppliers
    Left = 48
    Top = 96
  end
  object cdContacts: TClientDataSet
    Aggregates = <>
    DataSetField = cdSuppliersContacts
    Params = <>
    Left = 136
    Top = 48
    object cdContactsContactName: TStringField
      FieldName = 'ContactName'
      Size = 255
    end
    object cdContactsContactEmail: TStringField
      FieldName = 'ContactEmail'
      Size = 255
    end
    object cdContactsContactTel: TStringField
      FieldName = 'ContactTel'
      Size = 255
    end
    object cdContactsContactFax: TStringField
      FieldName = 'ContactFax'
      Size = 255
    end
    object cdContactsContactDescription: TStringField
      FieldName = 'ContactDescription'
      Size = 255
    end
  end
  object dsContacts: TDataSource
    DataSet = cdContacts
    Left = 136
    Top = 96
  end
end
