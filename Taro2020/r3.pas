unit r3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, global;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
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
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses info;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
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
          if str<>'' then
            begin
              ComboBox1.Items.Add(str);
              ComboBox2.Items.Add(str);
              ComboBox3.Items.Add(str);
            end;
        end;

    if str='[LA]' then
      while (str<>'') and (not eof(fot)) do
        begin
          readln(fot,str);
          if str<>'' then
            begin
              ComboBox1.Items.Add(str);
              ComboBox2.Items.Add(str);
              ComboBox3.Items.Add(str);
            end;
        end;
  end;
CloseFile(fot);
end;

procedure TForm5.Button1Click(Sender: TObject);
var nn1,nn2,nn3:integer;
    filename,filename2,filename3:string;
begin
  nn1:=ComboBox1.ItemIndex;
  nn2:=ComboBox2.ItemIndex;
  nn3:=ComboBox3.ItemIndex;
  if (nn1<0) or (nn2<0) or (nn3<0) then showmessage('Нужно выбрать карты!') else
    begin
      if nn1>255 then nn1:=255;
      if nn2>255 then nn2:=255;
      if nn3>255 then nn3:=255;
      filename:=GetFileCard(nn1);
      filename2:=GetFileCard(nn2);
      filename3:=GetFileCard(nn3);
      if (filename<>'') and (filename2<>'') and (filename3<>'') then
        begin
          Form3.Top:=Screen.Height - Form3.Height - 50;
          Form3.Left:=Screen.Width - Form3.Width - 5;
          Form3.Memo1.Clear;
          Form3.Memo1.Lines.Add(filename);
          Form3.Memo1.Lines.Add(ComboBox1.Items[nn1]);
          Form3.Memo1.Lines.Add(filename2);
          Form3.Memo1.Lines.Add(ComboBox2.Items[nn2]);
          Form3.Memo1.Lines.Add(filename3);
          Form3.Memo1.Lines.Add(ComboBox3.Items[nn3]);
          Form3.Memo1.Lines.Add('');
          if CheckBox1.Checked then GetTextFromFile(filename,1);
          if CheckBox1.Checked then GetTextFromFile(filename2,1);
          if CheckBox1.Checked then GetTextFromFile(filename3,1);
          if CheckBox2.Checked then GetTextFromFile(filename,2);
          if CheckBox2.Checked then GetTextFromFile(filename2,2);
          if CheckBox2.Checked then GetTextFromFile(filename3,2);
          if CheckBox3.Checked then GetTextFromFile(filename,3);
          if CheckBox3.Checked then GetTextFromFile(filename2,3);
          if CheckBox3.Checked then GetTextFromFile(filename3,3);
          if CheckBox4.Checked then GetTextFromFile(filename,4);
          if CheckBox4.Checked then GetTextFromFile(filename2,4);
          if CheckBox4.Checked then GetTextFromFile(filename3,4);
          if CheckBox5.Checked then GetTextFromFile(filename,5);
          if CheckBox5.Checked then GetTextFromFile(filename2,5);
          if CheckBox5.Checked then GetTextFromFile(filename3,5);
          if CheckBox6.Checked then GetTextFromFile(filename,6);
          if CheckBox6.Checked then GetTextFromFile(filename2,6);
          if CheckBox6.Checked then GetTextFromFile(filename3,6);
          if CheckBox7.Checked then GetTextFromFile(filename,7);
          if CheckBox7.Checked then GetTextFromFile(filename2,7);
          if CheckBox7.Checked then GetTextFromFile(filename3,7);
          if CheckBox8.Checked then GetTextFromFile(filename,8);
          if CheckBox8.Checked then GetTextFromFile(filename2,8);
          if CheckBox8.Checked then GetTextFromFile(filename3,8);
          GetTextFromFile(filename,9);
          GetTextFromFile(filename2,9);
          GetTextFromFile(filename3,9);
          Form3.ShowModal;
        end;
    end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
