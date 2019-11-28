unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  if (year mod 4 = 0) then
    result:=True;
end;
function DaysInMonth(month, year: integer): integer;
begin
  var febdays:=28;
  if IsLeapYear(year) then
    febdays:=29;
  
  case  month of
    1:result:=31;
    2:result:=febdays;
    3:result:=31;
    4:result:=30;
    5:result:=31;
    6:result:=30;
    7:result:=31;
    8:result:=31;
    9:result:=30;
    10:result:=31;
    11:result:=30;
    12:result:=31;
  end;
end;
function LaterInDay(p1, p2: DateTime): DateTime := p1;
function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;

begin

end.