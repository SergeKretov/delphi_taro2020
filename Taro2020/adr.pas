unit adr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, global;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
var d1,d2,d3,a1,a2,a3,a4,a5,a6,a7,a8:integer;
    tf:textfile;
    st:string;
begin
  Memo1.Lines.Clear;
  try
    d1:=strtoint(edit1.Text);
    d2:=strtoint(edit2.Text);
    d3:=strtoint(edit3.Text);
    a1:=d1 div 10;
    a2:=d1-(d1 div 10)*10;
    a3:=d2 div 10;
    a4:=d2-(d2 div 10)*10;
    a5:=d3 div 1000;
    a6:=(d3 div 100)-a5*10;
    a7:=(d3 div 10)-(a5*100+a6*10);
    a8:=d3-(a5*100+a6*10+a7)*10;
  except
    d1:=0;d2:=0;d3:=1;
    a1:=0;a2:=0;a3:=0;a4:=0;a5:=0;a6:=0;a7:=0;a8:=0;
  end;
    d1:=a1+a2;
    d2:=a3+a4;
    d3:=a5+a6+a7+a8;
    a1:=d1+d2+d3;
    if a1>22 then a1:=a1-22;
    Memo1.Lines.Add('Число Аркана '+inttostr(a1));
    st:=AppPath+'PAinf\'+inttostr(a1)+'.txt';
    Memo1.Lines.Add(st);
    Memo1.Lines.Add('');
    assignfile(tf,st);
    reset(tf);
    while not eof(tf) do
      begin
        readln(tf,st);
        Memo1.Lines.Add(st);
      end;
    closefile(tf);
    Image1.Picture.LoadFromFile(AppPath+'Image\'+inttostr(a1)+'.bmp'); 
end;

end.
