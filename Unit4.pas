unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TForm4.Button1Click(Sender: TObject);
var
  i,j: integer;
begin
  for i:= 0 to Reg.Count do
    begin
        if i = Reg.Count then
          begin
            ShowMessage('ログインIDかパスワードが間違っています。');
            break;
          end;
        if (Reg[i].Id = Edit1.Text) and (Reg[i].Password = Edit2.Text) then
          begin
            Regnum := i;
            Form5.Button1.Caption := Reg[Regnum].Name;
            Form5.ComboBox2.Items.Clear;
            Form5.ComboBox2.Text:= '友達';
            for j := 0 to Reg[Regnum].FriendList.Count - 1 do
            begin
              Form5.ComboBox2.Items.Add(Reg[Regnum].FriendList[j].Name);
            end;
            Form5.ShowModal;

            break;
          end;
    end;
end;

end.

