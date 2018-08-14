unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
  private
    { Private 宣言 }
    FButton : TButton;
    FEdit : TEdit;
    procedure ButtonClickEvent(Sender : TObject);
  public
    { Public 宣言 }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2, Unit5, Unit11;

procedure TForm10.Button4Click(Sender: TObject);
begin
  if (FButton = nil) and (FEdit = nil) then
  begin
    FEdit := TEdit.Create(Self);
    FEdit.Parent := Self;
    FEdit.Left := 100;
    FEdit.Top := 150;
    FEdit.Width := 160;
    FEdit.Height := 20;
    FEdit.Text := '';

    FButton := TButton.Create(Self);
    FButton.Parent := Self;
    FButton.Left := 150;
    FButton.Top := 170;
    FButton.Width := 60;
    FButton.Height := 30;
    FButton.Caption := '検索';
    FButton.OnClick := ButtonClickEvent;
  end;
end;

procedure TForm10.ButtonClickEvent(Sender: TObject);
var
  i : integer;
begin
  for i:= 0 to Reg.Count do
      begin
        if i = Reg.Count then
          begin
            ShowMessage('入力したIDのユーザーは存在しません。');
            FEdit.Text := '';
            ModalResult := 1000;
            break;
          end;
        if Reg[i].Id = FEdit.Text then
        begin
          Form11.Panel1.Caption:= Reg[i].Name;
          Reg2num:= i;
//form11で使うためのn
          Form11.ShowModal;
          FEdit.Text := '';
          break;
        end;
      end;
end;
end.

