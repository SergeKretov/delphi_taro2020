program taro2020;

uses
  Forms,
  taro_main in 'taro_main.pas' {Form1},
  global in 'global.pas',
  r1 in 'r1.pas' {Form2},
  info in 'info.pas' {Form3},
  r2 in 'r2.pas' {Form4},
  r3 in 'r3.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���� 2020';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
