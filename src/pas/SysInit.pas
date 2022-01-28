// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit SysInit;

interface
uses Windows, kernel32;

implementation

procedure PascalMain; external name 'PASCALMAIN';

procedure Entry; [public, alias: '_mainCRTStartup'];
begin
  PascalMain;
  ExitProcess(0);
end;

end.
