unit usuariosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  xCadPai;

type

  { TcadUsuariosF }

  TcadUsuariosF = class(TxCadPaiF)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
  private

  public

  end;

var
  cadUsuariosF: TcadUsuariosF;

implementation

{$R *.lfm}

end.

