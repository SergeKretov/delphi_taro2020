program taro2020;

uses
  Forms,
  taro_main in 'taro_main.pas' {Form1},
  global in 'global.pas',
  r1 in 'r1.pas' {Form2},
  info in 'info.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���� 2020';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
