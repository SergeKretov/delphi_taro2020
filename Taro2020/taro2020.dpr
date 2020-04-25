program taro2020;

uses
  Forms,
  taro_main in 'taro_main.pas' {Form1},
  global in 'global.pas',
  r1 in 'r1.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '“¿–Œ 2020';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
