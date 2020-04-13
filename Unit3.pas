unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, ExtCtrls, StdCtrls, DateUtils, Menus;

type
  TForm3 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label1: TLabel;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  var Age :integer;

implementation

uses Unit1, Unit2, Unit4, Unit7;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Panel1.Show;
MediaPlayer1.Close;
MediaPlayer1.FileName :=GetCurrentDir +'\1_Minute_Timer.wmv';
if FileExists(MediaPlayer1.FileName) then   begin
MediaPlayer1.Display:=Panel1;
MediaPlayer1.Notify:=true;
MediaPlayer1.Open;
MediaPlayer1.Play;
 end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
var s , k: integer;
begin
Val(Edit1.Text, s, k);
if ((k=0) and (s>31)) then Begin
Edit1.Clear;
Edit1.SetFocus;
end;


end;

procedure TForm3.Edit2Change(Sender: TObject);
var s , k: integer;
begin
Val(Edit2.Text, s, k);
if ((k=0) and (s>12)) then Begin
Edit2.Clear;
Edit2.SetFocus;
end;

end;

procedure TForm3.Edit3Change(Sender: TObject);
var s , k: integer;
begin
Val(Edit3.Text, s, k);
if ((k=0) and (s>2017)) then Begin
Edit3.Clear;
Edit3.SetFocus;
end;
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then Key:=#0;
end;

procedure TForm3.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then Key:=#0;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then Key:=#0;
end;

procedure TForm3.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then Key:=#0;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
d, m ,y : integer;
myDate:TDateTime;
begin
 if ((Edit1.Text = '') or (StrToInt(Edit1.Text) = 0)) then
begin
  Showmessage('������� ���� ��������');
  exit;
end;
if ((Edit3.Text = '')or (StrToInt(Edit3.Text) = 0)) then
begin
  Showmessage('������� ���� ��������');
  exit;
end;
if ((Edit2.Text = '') or (StrToInt(Edit2.Text) = 0)) then
begin
  Showmessage('������� ���� ��������');
  exit;
end;
d:=StrToInt(Edit1.Text);
m:=StrToInt(Edit2.Text);
y:=StrToInt(Edit3.Text);
if(((m = 4) or (m = 6) or (m = 9) or (m = 11) ) and (d =31))
or ((y mod 4 =0) and (m=2) and (d>30))
or ((m =2) and (d> 29))   then
begin
ShowMessage('����������� ������� ����');
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Exit;
end;
if (Edit4.Text = '' ) then  begin
ShowMessage('�������� ���� �����');   Exit; end;
if ((StrToInt(Edit4.Text) < 60) or (StrToInt(Edit4.Text) >80) ) then
ShowMessage('���������(-��) '  + edit5.Text + '. ��� ����� ��������� �� ��������� �����. ���������� � �����.');
if (Edit5.Text = '' ) then begin
ShowMessage('������� ���');     Exit; end;
myDate := EncodeDate(y, m, d);
Age := YearsBetween(now, myDate);
Form3.Hide;
Form4.Show;
MediaPlayer1.Close;
end;
procedure TForm3.N1Click(Sender: TObject);
begin
AboutBox.Show;
end;

procedure TForm3.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['�'..'�', '�'..'�',#8,#32])then Key:=#0;
end;

end.
