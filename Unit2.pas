unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3, Unit7;

{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
begin
MediaPlayer1.Close;
MediaPlayer1.FileName :=GetCurrentDir +'\00.mp3';
if FileExists(MediaPlayer1.FileName) then   begin
MediaPlayer1.Notify:=true;
MediaPlayer1.Open;
MediaPlayer1.Play;
end;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
MediaPlayer1.Close;
Form2.Hide;
Form3.Show;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
AboutBox.Show;
end;

end.
 