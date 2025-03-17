unit loginU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ZDataset,
  ZAbstractRODataset,DB,menu;

type

  { TloginF }

  TloginF = class(TForm)
    ButtonLogin: TButton;
    EditUsername: TEdit;
    EditPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ZQueryLogin: TZQuery;
    ZQueryLoginid: TZIntegerField;
    ZQueryLoginnome_completo: TZRawStringField;
    ZQueryLoginsenha: TZRawStringField;
    ZQueryLoginusuario: TZRawStringField;
    procedure ButtonLoginClick(Sender: TObject);
  private

  public

  end;

var
  loginF: TloginF;

implementation

{$R *.lfm}

{ TloginF }



procedure TloginF.ButtonLoginClick(Sender: TObject);
begin
  ZQueryLogin.Close;
  ZQueryLogin.Params.ParamByName('usuario').AsString := EditUsername.Text;
  ZQueryLogin.Params.ParamByName('senha').AsString := EditPassword.Text;
  ZQueryLogin.Open;

  if not ZQueryLogin.IsEmpty then
  begin
    MenuF := TmenuF.Create(Self);
    menuF.ShowModal;
  end
  else
  begin
    ShowMessage('Usuário ou senha incorretos.');
  end;
end;

end.

