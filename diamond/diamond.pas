program diamond;
uses crt;

procedure PrintSpaces(count: integer);
var i: integer;
begin
  for i := 1 to count do write(' ');
end;

procedure PrintLineOfDimond(lineNumber, halfHeight: integer);
begin
  PrintSpaces(halfHeight - lineNumber + 1);
  write('*');

  if lineNumber > 1 then begin
    PrintSpaces(lineNumber * 2 - 3);
    write('*')
  end;
end;

procedure PrintDiamond(diamondHeight: integer);
var
  halfHeight: integer;
  currentLine: integer;
begin
  writeln();

  halfHeight := diamondHeight div 2;

  for currentLine := 1 to halfHeight + 1 do begin
    PrintLineOfDimond(currentLine, halfHeight);
    writeln();
  end;

  for currentLine := halfHeight downto 1 do begin
    PrintLineOfDimond(currentLine, halfHeight);
    writeln();
  end;

  writeln();
end;

var
  diamondHeight: integer = 0;

begin

  while (diamondHeight <= 3) or (diamondHeight mod 2 = 0) do begin
    write('Please enter an odd number greater than 3: ');
    read(diamondHeight);
  end;

  PrintDiamond(diamondHeight);
end.
