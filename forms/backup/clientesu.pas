unit clientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  xCadPai;

type

  { TcadClientesF }

  TcadClientesF = class(TxCadPaiF)
    edtIdCliente: TDBEdit;
    edtCpfCnpj: TDBEdit;
    edtNomeCliente: TDBEdit;
    edtTipoCliente: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  cadClientesF: TcadClientesF;

implementation

{$R *.lfm}

{ TcadClientesF }

procedure TcadClientesF.FormCreate(Sender: TObject);
begin

end;

end.

