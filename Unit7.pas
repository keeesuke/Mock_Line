unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit8, Unit5, Unit2, Unit10;

procedure TForm7.Button1Click(Sender: TObject);
var
  m: integer;
  tempCon: TCon;
begin
  if Edit1.Text <> '' then
    begin

      tempCon:= TCon.Create;
      tempCon.Tell := Edit1.Text;
      tempCon.Who := Reg[Regnum].Name;
      Reg[Regnum].TalkList[talknum].ConList.Add(tempCon);
      Reg[Reg2num].TalkList[talk2num].ConList.Add(tempCon);

//      for m:= 0 to Reg[Regnum].TalkList[talknum].ConList.Count - 1 do
//      begin
//        showMessage(Reg[Regnum].TalkList[talknum].ConList[m].Tell);
//      end;

//      showMessage(IntToStr(Reg[Regnum].TalkList[talknum].ConList.Count - 1));
      Memo1.Lines.Insert(Reg[Regnum].TalkList[talknum].ConList.Count - 1, Reg[Regnum].Name);
      Memo2.Lines.Insert(Reg[Regnum].TalkList[talknum].ConList.Count - 1, Edit1.Text);
      Edit1.Text:= '';
    end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  Form8.showModal;
end;

end.
