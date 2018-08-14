unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Generics.Collections;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit2, Unit5, Unit10;

procedure TForm11.Button1Click(Sender: TObject);
var
  tempTalk: TTalk;
  tempTalk2: TTalk;
  tempCon: TCon;
begin
  tempTalk:= TTalk.Create;
  tempCon:= TCon.Create;
  tempTalk.ConList:= TList<TCon>.Create;
  tempTalk.Opponent:= Reg[Reg2num].Name;
  tempTalk.OpponentID:= Reg[Reg2num].Id;
//  tempTalk.ConList.Add(tempCon);

  tempTalk2:= TTalk.Create;
  tempCon:= TCon.Create;
  tempTalk2.ConList:= TList<TCon>.Create;
  tempTalk2.Opponent:= Reg[Regnum].Name;
  tempTalk2.OpponentID:= Reg[Regnum].Id;

  Reg[Regnum].TalkList.Add(tempTalk);
  Reg[Reg2num].TalkList.Add(tempTalk2);

  Reg[Regnum].FriendList.Add(Reg[Reg2num]);
  Reg[Reg2num].FriendList.Add(Reg[Regnum]);
  Form5.ComboBox2.Items.Add(Reg[Reg2num].Name);
  ShowMessage('í«â¡ÇµÇ‹ÇµÇΩÅI');
  ModalResult := 1000;
end;

end.
