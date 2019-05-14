unit Functions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBActns, Data.DB, Datasnap.DBClient;

  procedure dbCopyRecord(masterDataSet, detailDataSet: TDataSet);
  procedure dbCheckRequiredFields(pDataSet: TDataSet);
  procedure dbPostDataSet(pDataSet: TDataSet);


implementation

procedure dbCopyRecord(masterDataSet, detailDataSet: TDataSet);
var
  i: Integer;
  vCopyMasterData, vCopyDetailData: Variant;
begin
  if not masterDataSet.IsEmpty then
    with TClientDataSet(masterDataSet) do
    begin
      // copy data to vCopyData
      vCopyMasterData := VarArrayCreate([0, FieldCount - 1], varVariant);
      for i := 0 to FieldCount - 1 do
      begin
        if not VarIsNull(Fields[i].Value) then
          vCopyMasterData[i] := Fields[i].Value;
      end;
    end;

//  TODO: copy all detail records
//
//  if not detailDataSet.IsEmpty then
//    with TClientDataSet(detailDataSet) do
//    begin
//      // copy data to vCopyData
//      vCopyDetailData := VarArrayCreate([0, FieldCount - 1], varVariant);
//      for i := 0 to FieldCount - 1 do
//      begin
//        if not VarIsNull(Fields[i].Value) then
//          vCopyDetailData[i] := Fields[i].Value;
//      end;
//    end;


  with TClientDataSet(masterDataSet) do
  begin
    Insert;
    for i := 0 to FieldCount - 1 do
    begin
      if not VarIsNull(vCopyMasterData[i]) then
        Fields[i].Value := vCopyMasterData[i];
    end;
    Post;
  end;

//  with TClientDataSet(detailDataSet) do
//  begin
//    Insert;
//    for i := 0 to FieldCount - 1 do
//    begin
//      if not VarIsNull(vCopyDetailData[i]) then
//        Fields[i].Value := vCopyDetailData[i];
//    end;
//    Post;
//  end;
end;
procedure dbCheckRequiredFields(pDataSet: TDataSet);
var
  i: integer;
begin
  with TClientDataSet(PDataSet) do
  begin
    for i := 0 to FieldCount - 1 do
    begin
      if (pDataSet.Fields[i].Required)
      and (pDataSet.Fields[i].IsNull
        or (
          (pDataSet.Fields[i] is TStringField) and (pDataSet.Fields[i].AsString = '')
        )
      ) then
      begin
        ShowMessage('Please input the required field!');
        pDataSet.Fields[i].FocusControl;
        Abort;
      end;
    end;
  end;
end;

procedure dbPostDataSet(pDataSet: TDataSet);
begin
  if pDataSet.State in [dsInsert, dsEdit] then
    pDataSet.Post;
end;

end.
