unit taro_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, global, jpeg, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    StaticText1: TStaticText;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    N9: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses r1, r2, r3, adr;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AppPath:=ExtractFilePath(Application.ExeName);
  Image1.Picture.LoadFromFile(AppPath+'Image\space.jpg');
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  ShowMessage('(c) 2020 Сергей С. Барсуков г.Норильск 8-905-979-10-76');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

end.
