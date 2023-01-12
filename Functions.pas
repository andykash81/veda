unit Functions;

interface
uses   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Buttons, OleServer,
  Word_TLB, ADODB, ShellApi;
  procedure ActivateDataSetWithParam(param, paramValue:string; dataSet:TADODataSet);
  procedure ReplaceInWord(wordApp:OleVariant;oldStr,newStr:String);
  procedure typeToWordHist(wordApp:OleVariant;oldStr,newStr:String;find:boolean);
  function getConectStr:string;
  function getDocsNumByPath(path:string):integer;
  function getFileName(fileName:string):string;

implementation
  Procedure ActivateDataSetWithParam(param, paramValue:string; dataSet:TADODataSet);
  begin
  with dataSet do
    begin
    Active:=false;
    Parameters.ParamValues[param]:=paramValue;
    Active:=true;
    First;
    end;
  end;

  procedure ReplaceInWord(wordApp:OleVariant;oldStr,newStr:String);
  var replace,tmpStr,wstart,wend:OleVariant; found:boolean;
  begin
  replace:=wdReplaceNone;
  wstart:=wdFindContinue;
  wend:=wdForward;
  tmpStr:='';

  found:=wordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,wend, wstart,EmptyParam, tmpStr,replace,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  if(found) then
    begin
    wordApp.Selection.TypeText(newStr);
    end;
  end;

procedure typeToWordHist(wordApp:OleVariant;oldStr,newStr:String; find:boolean);
var words,phrs:TStringList;i:integer;replace,tmpStr,wstart,wend:OleVariant;
begin
  replace:=wdReplaceNone;
  tmpStr:=oldStr;
  wstart:=wdFindContinue;
  wend:=wdForward;
  phrs:=TStringList.Create;
  words:=TStringList.Create;
  if(find)then
  wordApp.Selection.Find.Execute(tmpStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,wend, wstart,EmptyParam,tmpStr,replace,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam);
phrs.Add('Жалобы:');
phrs.Add('Слизистая:');
phrs.Add('Диагноз:');
phrs.Add('Лечение:');
phrs.Add('An.');
phrs.Add('morbi:');
phrs.Add('Объективно:');
phrs.Add('Снимок:');
phrs.Add('Рекомендации:');
ExtractStrings([' '],[],PChar(newStr),words);
for i:=0 to words.Count-1 do
  begin
  if(phrs.IndexOf(words[i])<>-1) then
    begin
    if(words[i]<>'morbi:') then
      begin
      wordApp.Selection.Font.Bold:=1;
      wordApp.Selection.TypeText(chr(13)+words[i]+' ');
      wordApp.Selection.Font.Bold:=0;
      end
    else
      begin
      wordApp.Selection.Font.Bold:=1;
      wordApp.Selection.TypeText(words[i]+' ');
      wordApp.Selection.Font.Bold:=0;
      end;
    end
  else
    begin
    wordApp.Selection.Font.Italic:=1;
    wordApp.Selection.TypeText(words[i]+' ');
    wordApp.Selection.Font.Italic:=0;
    end;
  end;
end;

function getconectStr:string;
var conectStr:widestring; iFileHandle: Integer;
  iFileLength: Integer;
  iBytesRead: Integer;
  Buffer: PChar;
  i: Integer;
begin
if(not(FileExists('c:\veda\db333.mdb'))) then
  begin
  try
  conectStr:='';
  iFileHandle := FileOpen('c:\veda\connectionString.txt', fmOpenRead);
  iFileLength := FileSeek(iFileHandle,0,2);
  FileSeek(iFileHandle,0,0);
  Buffer := PChar(AllocMem(iFileLength + 1));
  iBytesRead := FileRead(iFileHandle, Buffer^, iFileLength);
  FileClose(iFileHandle);
  for i := 0 to iBytesRead-1 do
    begin
    conectStr:=conectStr+Buffer[i];
    end;
    finally
      FreeMem(Buffer);
      conectStr:=ExtractFileDir(conectStr);
    end;
  end
else
  begin
  conectStr:='c:\veda'
  end;
Result:=conectStr;
end;

function getDocsNumByPath(path:string):integer;
var h: thandle;
data: twin32finddata;
begin
result := 0;
h := findfirstfile(pchar(path+'\' + '*.*'), data);
if h <> invalid_handle_value then
repeat
inc(result, ord(data.dwfileattributes and file_attribute_directory = 0));
until
not findnextfile(h, data);
windows.findclose(h);
end;

function getFileName(fileName:string):string;
var i:integer;
begin
i:=1;
Result:=fileName;
while(FileExists(Result+'.doc')) do
  begin
  Result:=fileName+'('+IntTostr(i)+')';
  i:=i+1;
  end;
end;

end.
