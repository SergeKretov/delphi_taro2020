unit r1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, global;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var fot:textfile;
    str:string;
begin
assignfile(fot,AppPath+'Inf\info.txt');
reset(fot);
while not eof(fot) do
  begin
    readln(fot,str);
    if str='[HA]' then
      while (str<>'') and (not eof(fot)) do
        begin
          readln(fot,str);
          if str<>'' then ComboBox1.Items.Add(str);
        end;

    if str='[LA]' then
      while (str<>'') and (not eof(fot)) do
        begin
          readln(fot,str);
          if str<>'' then ComboBox1.Items.Add(str);
        end;
  end;
CloseFile(fot);

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Showmessage(inttostr(ComboBox1.ItemIndex));
  
end;

end.
