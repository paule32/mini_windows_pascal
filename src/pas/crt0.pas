unit crt0;

interface
  procedure _mainCRTStartup;

implementation

procedure _mainCRTStartup; assembler;
asm
	call @main
end;

end.
