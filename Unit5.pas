unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, ExtCtrls, StdCtrls, Menus;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    Edit4: TEdit;
    Label4: TLabel;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit6, Unit7;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
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

procedure TForm5.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#8])then Key:=#0;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if (Edit4.Text = '' ) then
ShowMessage('�������� �������� �����');
If ((220-Unit3.Age)<StrToInt(Form5.Edit4.Text)) then  begin
ShowMessage('���������(-��) ' + Form3.Edit5.Text + '. � ��� ���������� �� �����. ������������������� � �����') ;
MediaPlayer1.Close;
Unit3.Age:=0;
Form5.Hide;
Form3.Show;
Form3.Edit1.Clear;
Form3.Edit2.Clear;
Form3.Edit3.Clear;
Form3.Edit4.Clear;
Form5.Edit4.Clear;
Form3.Edit5.Clear;
Form3.Panel1.Hide;
end
else
  begin
  MediaPlayer1.close;
Form5.Hide;
Form6.Show;
end;
end;

procedure TForm5.N1Click(Sender: TObject);
begin
AboutBox.Show;
end;

end.
