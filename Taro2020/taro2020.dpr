program taro2020;

uses
  Forms,
  taro_main in 'taro_main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���� 2020';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
