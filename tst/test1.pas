{$mode delphi}

program test1;

uses
  Types, Windows, kernel32, user32;

const
  s = 'mops';
begin
  MessageBoxA(0,s,PChar('a  li tt le text'),0);
//  ExitProcess(0);
end.
