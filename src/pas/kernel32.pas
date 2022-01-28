// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit kernel32;

interface

procedure ExitProcess(ExitCode: LongInt); stdcall; external 'kernel32.dll' name 'ExitProcess';

implementation

end.