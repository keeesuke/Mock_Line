unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm3.Button1Click(Sender: TObject);
var
    tempReg: TReg;
    i: integer;
//    tempTalk: TTalk;
begin
    tempReg:= TReg.Create;
//    tempTalk:= TTalk.Create;
    tempReg.Name := Edit1.Text;
    tempReg.Id := Edit2.Text;
    tempReg.Password := Edit3.Text;
    tempReg.TalkList := TList<TTalk>.Create;
    tempReg.FriendList := TList<TReg>.Create;
//    tempReg.TalkList.Add(tempTalk);
//    showMessage(tempReg.TalkList[0].Opponent);

    for i:= 0 to Reg.Count do
      begin
        if i = Reg.Count then
          begin
            Reg.Add(tempReg);
            ShowMessage('êVÇµÇ≠ìoò^ÇµÇ‹ÇµÇΩÅI');
            ModalResult := 1000;
            break;
          end;
        if Reg[i].Id = Edit2.Text then
          begin
            ShowMessage('ä˘Ç…Ç±ÇÃIDÇÕìoò^Ç≥ÇÍÇƒÇ¢Ç‹Ç∑ÅB');
            break;
          end;
      end;
end;

end.

