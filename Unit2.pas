unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TCon = class(TObject)
    Who: string;
    Tell: string;
    Line: integer;

   private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

  TTalk = class(TObject)
    Opponent, OpponentID: string;
    ConList: TList<TCon>;

  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

  TReg = class(TObject)
    Name,Id, Password: string;
    FriendList: TList<TReg>;
    TalkList: TList<TTalk>;

  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;


TForm2 = class(TForm)
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

var
  Form2: TForm2;
  Reg: TList<TReg>;
  line, talknum, talk2num, Regnum, Reg2num: integer;

implementation

{$R *.dfm}

uses Unit3, Unit4;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form4 := TForm4.Create(Self);
  Form4.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form3 := TForm3.Create(Self);
  Form3.ShowModal;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Reg:= TList<TReg>.Create;
end;

end.

