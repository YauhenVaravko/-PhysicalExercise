unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MPlayer, StdCtrls, Menus, DSPack;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    FilterGraph1: TFilterGraph;
    VideoWindow1: TVideoWindow;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit2, Unit3, Unit5, Unit7, Unit6;

{$R *.dfm}

procedure TForm4.Button2Click(Sender: TObject);
var PUT :  String;
begin
Button2.Hide;
Button1.Show;
self.Height:= 650;
self.Width:= 1060 ;
PUT:=GetCurrentDir +'\111.avi';
Panel1.Show;
FilterGraph1.ClearGraph;
FilterGraph1.Stop;
FilterGraph1.RenderFile(PUT);
FilterGraph1.Play;
 end;

procedure TForm4.Button1Click(Sender: TObject);
begin
FilterGraph1.Stop;

Form4.Hide;
Form5.Show;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
AboutBox.Show;
end;

end.
