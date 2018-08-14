unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Generics.Collections;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
//    procedure Button2Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit8, Unit5;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;
//以下ショートカット
//
procedure TForm1.Button2Click(Sender: TObject);
var
  reg1: TReg;
  reg2: TReg;
  tempTalk: TTalk;
  tempTalk2: TTalk;
//  tempCon: TCon;
begin
    Button2.OnClick := Form2.FormCreate;
    reg1:= TReg.Create;
    reg1.Name := 'a';
    reg1.Id := 'a';
    reg1.Password := 'a';
    reg1.TalkList := TList<TTalk>.Create;
    reg1.FriendList := TList<TReg>.Create;

    reg2:= TReg.Create;
    reg2.Name := 'b';
    reg2.Id := 'b';
    reg2.Password := 'b';
    reg2.TalkList := TList<TTalk>.Create;
    reg2.FriendList := TList<TReg>.Create;
//    reg2.TalkList.ConList := TList<TCon>.Create;

    tempTalk:= TTalk.Create;
//    tempCon:= TCon.Create;
    tempTalk.ConList:= TList<TCon>.Create;
    tempTalk.Opponent:= reg2.Name;
    tempTalk.OpponentID:= reg2.Id;
//    tempTalk.ConList.Add(tempCon);

    tempTalk2:= TTalk.Create;
    tempTalk2.ConList:= TList<TCon>.Create;
    tempTalk2.Opponent:= reg1.Name;
    tempTalk2.OpponentID:= reg1.Id;
//    tempTalk2.ConList.Add(tempCon);

    reg1.TalkList.Add(tempTalk);
    reg2.TalkList.Add(tempTalk2);

    reg1.FriendList.Add(reg2);
    reg2.FriendList.Add(reg1);

    Reg.Add(reg1);
    Reg.Add(reg2);

//    showMessage('finished!');

end;

end.
