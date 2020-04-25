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
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses r1;

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

end.
