unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Tabs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
      var
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2, Unit6, Unit9, Unit8, Unit7;

procedure TForm5.Button2Click(Sender: TObject);
var
  i,j,k: integer;
begin
  if ComboBox2.ItemIndex > -1 then
  begin

    for i:= 0 to Reg.Count -1 do
    begin
        if Reg[i].Name = ComboBox2.Items[ComboBox2.ItemIndex] then
          begin
            Reg2num := i;
            for k:= 0 to Reg[i].TalkList.Count -1 do
            begin
               if Reg[Regnum].Name = Reg[i].TalkList[k].Opponent then
              begin
                talk2num := k;
              end;
            end;

          end;
    end;


    for i:= 0 to Reg[Regnum].TalkList.Count - 1 do
    begin
      if ComboBox2.Items[ComboBox2.ItemIndex] = Reg[Regnum].TalkList[i].Opponent then
      begin
        talknum := i;
        Form7.Memo1.Lines.Clear;
        Form7.Memo2.Lines.Clear;

        if Reg[Regnum].TalkList[i].ConList.Count = 0 then
            begin
               Form7.ShowModal;
            end
        else
            begin
            for j:=0 to Reg[Regnum].TalkList[talknum].ConList.Count - 1 do
              begin
                  Form7.Memo1.Lines.Insert(j, Reg[Regnum].TalkList[i].ConList[j].Who);
                  Form7.Memo2.Lines.Insert(j, Reg[Regnum].TalkList[i].ConList[j].Tell);
                end;
              Form7.ShowModal;
            end;
      end;
    end;
  end;
  ComboBox2.Text:= '—F’B';

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  Form9.showModal;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  Form8.showModal;
end;

end.
