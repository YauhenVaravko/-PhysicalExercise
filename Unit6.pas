unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
Unit3.Age:=0;
Form6.Hide;
Form3.Show;
Form3.Edit1.Clear;
Form3.Edit2.Clear;
Form3.Edit3.Clear;
Form3.Edit4.Clear;
Form5.Edit4.Clear;
Form3.Edit5.Clear;
Form4.Panel1.Hide;
Form4.FilterGraph1.ClearGraph;
Form4.Button1.hide;
Form4.Button2.Show;
Form4.Height:= 230;
Form4.Width:= 383 ;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Hide;
Form4.Show;
Form4.Panel1.Hide;
Form4.Button1.hide;
Form4.Height:= 230;
Form4.Width:= 383 ;
Form4.Button2.Show;
Form5.Edit4.Clear;
end;

end.
