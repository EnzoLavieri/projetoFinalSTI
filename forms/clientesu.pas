unit clientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ZDataset, xCadPai;

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
    ZQuery1: TZQuery;
    procedure btnExluirClick(Sender: TObject);
    procedure edtPesqClick(Sender: TObject);

  private

  public

  end;

var
  cadClientesF: TcadClientesF;

implementation

{$R *.lfm}

{ TcadClientesF }

procedure TcadClientesF.edtPesqClick(Sender: TObject);
begin
     ZQuery1.Close;
  if Edit1.Text <> '' then
    ZQuery1.SQL.Text := 'SELECT * FROM cliente WHERE CLIENTEID = ' + Edit1.Text
  else
    ZQuery1.SQL.Text := 'SELECT * FROM clienteS';
  ZQuery1.Open;
end;

procedure TcadClientesF.btnExluirClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('Voce tem certeza que deseja excluir o registro ' +
    edtIdCliente.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;

  end;
end;

end.

