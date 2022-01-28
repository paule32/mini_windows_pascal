// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2022 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit user32;

interface
uses Types;

function MessageBoxA(hwnd: HWND; lpText: LPCSTR; lpCaption: LPCSTR; uType: UINT ): Integer; stdcall; external 'user32.dll' name 'MessageBoxA';

implementation

procedure dummy; begin end;
end.
