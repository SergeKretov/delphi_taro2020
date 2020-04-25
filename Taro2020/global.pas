unit global;


interface

uses info;

var AppPath:String;

function GetFileCard(nn:byte):string;
procedure GetTextFromFile(filename:string; block:byte);

implementation

function GetFileCard(nn:byte):string;
begin
  case nn of
      0: GetFileCard:=AppPath+'Inf\hight\0.txt';
      1: GetFileCard:=AppPath+'Inf\hight\1.txt';
      2: GetFileCard:=AppPath+'Inf\hight\2.txt';
      3: GetFileCard:=AppPath+'Inf\hight\3.txt';
      4: GetFileCard:=AppPath+'Inf\hight\4.txt';
      5: GetFileCard:=AppPath+'Inf\hight\5.txt';
      6: GetFileCard:=AppPath+'Inf\hight\6.txt';
      7: GetFileCard:=AppPath+'Inf\hight\7.txt';
      8: GetFileCard:=AppPath+'Inf\hight\8.txt';
      9: GetFileCard:=AppPath+'Inf\hight\9.txt';
      10: GetFileCard:=AppPath+'Inf\hight\10.txt';
      11: GetFileCard:=AppPath+'Inf\hight\11.txt';
      12: GetFileCard:=AppPath+'Inf\hight\12.txt';
      13: GetFileCard:=AppPath+'Inf\hight\13.txt';
      14: GetFileCard:=AppPath+'Inf\hight\14.txt';
      15: GetFileCard:=AppPath+'Inf\hight\15.txt';
      16: GetFileCard:=AppPath+'Inf\hight\16.txt';
      17: GetFileCard:=AppPath+'Inf\hight\17.txt';
      18: GetFileCard:=AppPath+'Inf\hight\18.txt';
      19: GetFileCard:=AppPath+'Inf\hight\19.txt';
      20: GetFileCard:=AppPath+'Inf\hight\20.txt';
      21: GetFileCard:=AppPath+'Inf\hight\21.txt';

      22: GetFileCard:=AppPath+'Inf\wands\ace.txt';
      23: GetFileCard:=AppPath+'Inf\wands\2.txt';
      24: GetFileCard:=AppPath+'Inf\wands\3.txt';
      25: GetFileCard:=AppPath+'Inf\wands\4.txt';
      26: GetFileCard:=AppPath+'Inf\wands\5.txt';
      27: GetFileCard:=AppPath+'Inf\wands\6.txt';
      28: GetFileCard:=AppPath+'Inf\wands\7.txt';
      29: GetFileCard:=AppPath+'Inf\wands\8.txt';
      30: GetFileCard:=AppPath+'Inf\wands\9.txt';
      31: GetFileCard:=AppPath+'Inf\wands\10.txt';
      32: GetFileCard:=AppPath+'Inf\wands\king.txt';
      33: GetFileCard:=AppPath+'Inf\wands\queen.txt';
      34: GetFileCard:=AppPath+'Inf\wands\knight.txt';
      35: GetFileCard:=AppPath+'Inf\wands\knave.txt';

      36: GetFileCard:=AppPath+'Inf\swords\ace.txt';
      37: GetFileCard:=AppPath+'Inf\swords\2.txt';
      38: GetFileCard:=AppPath+'Inf\swords\3.txt';
      39: GetFileCard:=AppPath+'Inf\swords\4.txt';
      40: GetFileCard:=AppPath+'Inf\swords\5.txt';
      41: GetFileCard:=AppPath+'Inf\swords\6.txt';
      42: GetFileCard:=AppPath+'Inf\swords\7.txt';
      43: GetFileCard:=AppPath+'Inf\swords\8.txt';
      44: GetFileCard:=AppPath+'Inf\swords\9.txt';
      45: GetFileCard:=AppPath+'Inf\swords\10.txt';
      46: GetFileCard:=AppPath+'Inf\swords\king.txt';
      47: GetFileCard:=AppPath+'Inf\swords\queen.txt';
      48: GetFileCard:=AppPath+'Inf\swords\knight.txt';
      49: GetFileCard:=AppPath+'Inf\swords\knave.txt';

      50: GetFileCard:=AppPath+'Inf\pentacles\ace.txt';
      51: GetFileCard:=AppPath+'Inf\pentacles\2.txt';
      52: GetFileCard:=AppPath+'Inf\pentacles\3.txt';
      53: GetFileCard:=AppPath+'Inf\pentacles\4.txt';
      54: GetFileCard:=AppPath+'Inf\pentacles\5.txt';
      55: GetFileCard:=AppPath+'Inf\pentacles\6.txt';
      56: GetFileCard:=AppPath+'Inf\pentacles\7.txt';
      57: GetFileCard:=AppPath+'Inf\pentacles\8.txt';
      58: GetFileCard:=AppPath+'Inf\pentacles\9.txt';
      59: GetFileCard:=AppPath+'Inf\pentacles\10.txt';
      60: GetFileCard:=AppPath+'Inf\pentacles\king.txt';
      61: GetFileCard:=AppPath+'Inf\pentacles\queen.txt';
      62: GetFileCard:=AppPath+'Inf\pentacles\knight.txt';
      63: GetFileCard:=AppPath+'Inf\pentacles\knave.txt';

      64: GetFileCard:=AppPath+'Inf\cups\ace.txt';
      65: GetFileCard:=AppPath+'Inf\cups\2.txt';
      66: GetFileCard:=AppPath+'Inf\cups\3.txt';
      67: GetFileCard:=AppPath+'Inf\cups\4.txt';
      68: GetFileCard:=AppPath+'Inf\cups\5.txt';
      69: GetFileCard:=AppPath+'Inf\cups\6.txt';
      70: GetFileCard:=AppPath+'Inf\cups\7.txt';
      71: GetFileCard:=AppPath+'Inf\cups\8.txt';
      72: GetFileCard:=AppPath+'Inf\cups\9.txt';
      73: GetFileCard:=AppPath+'Inf\cups\10.txt';
      74: GetFileCard:=AppPath+'Inf\cups\king.txt';
      75: GetFileCard:=AppPath+'Inf\cups\queen.txt';
      76: GetFileCard:=AppPath+'Inf\cups\knight.txt';
      77: GetFileCard:=AppPath+'Inf\cups\knave.txt';
      else GetFileCard:='';
  end;
end;

procedure GetTextFromFile(filename:string; block:byte);
var ft:textfile;
    st,tag:string;
begin
  Form3.Memo1.Lines.Add('');
  assignfile(ft,filename);
  reset(ft);
  case block of
    1: tag:='[main]';
    2: tag:='[pers]';
    3: tag:='[deep]';
    4: tag:='[prof]';
    5: tag:='[fin]';
    6: tag:='[me]';
    7: tag:='[back]';
    8: tag:='[other]';
    9: tag:='[arh]';
    else tag:='[]';
  end;
case block of
    1: Form3.Memo1.Lines.Add('Общее значение');
    2: Form3.Memo1.Lines.Add('Личностное состояние');
    3: Form3.Memo1.Lines.Add('На более глубоком уровне');
    4: Form3.Memo1.Lines.Add('Профессиональная ситуация');
    5: Form3.Memo1.Lines.Add('Финансовое и жилищное положение');
    6: Form3.Memo1.Lines.Add('Личные отношения');
    7: Form3.Memo1.Lines.Add('Перевернутая карта');
    8: Form3.Memo1.Lines.Add('Проявления в сочетаниях');
    9: Form3.Memo1.Lines.Add('Архетипические соответствия');
    else Form3.Memo1.Lines.Add('---');
  end;
  while not eof(ft) do
    begin
      readln(ft,st);
      if st=tag then
        while (st<>'') and (not eof(ft)) do
          begin
            readln(ft,st);
            Form3.Memo1.Lines.Add(st);
          end;
    end;
  CloseFile(ft);
end;


end.
