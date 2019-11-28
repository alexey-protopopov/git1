unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  if ((year mod 4)=0) and ((year mod 100)<>0) then
    result:=true;
  if (year mod 400)=0 then
    result:=true;
end;
function DaysInMonth(month, year: integer): integer;
begin
  var k := 30;
  var i:=2;
  if IsLeapYear(year) then
    i-=1;
Assert((month>0) and (month<13));
case month of
    2: k-=i;
    1,3,5,7,8,10,12: k+=1;
end;
  result:=k;
end;
function LaterInDay(p1, p2: DateTime): DateTime := p1;
function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;

begin

end.