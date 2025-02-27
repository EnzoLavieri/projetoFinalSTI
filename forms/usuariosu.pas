unit usuariosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ZSqlUpdate, ZDataset, xCadPai;

type

  { TcadUsuariosF }

  TcadUsuariosF = class(TxCadPaiF)
    edtIdUsuario: TDBEdit;
    edtUsuario: TDBEdit;
    edtNomeUsuario: TDBEdit;
    edtSenhaUsuario: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ZQuery1: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
  private

  public

  end;

var
  cadUsuariosF: TcadUsuariosF;

implementation

{$R *.lfm}

end.

