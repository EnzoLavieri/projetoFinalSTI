unit cadUsuariosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, xCadPai;

type

  { TusuariosF }

  TusuariosF = class(TclientesF)
    edtID: TEdit;
    edtUsuario: TEdit;
    edtNome: TEdit;
    edtSenha: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
  private

  public

  end;

var
  usuariosF: TusuariosF;

implementation

{$R *.lfm}

end.

