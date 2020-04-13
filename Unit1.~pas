unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Menus;

type
  TForm1 = class(TForm)
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit7;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
AboutBox.Show;
end;

end.
