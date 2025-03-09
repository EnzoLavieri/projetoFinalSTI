unit clientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons, ZDataset, ZSqlUpdate, xCadPai;

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
    qryClientes: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

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
  qryClientes.Active := True;
end;

procedure TcadClientesF.SpeedButton1Click(Sender: TObject);
begin
         qryClientes.Close;
  if Edit1.Text <> '' then
    qryClientes.SQL.Text := 'SELECT * FROM cliente WHERE CLIENTEID = ' + Edit1.Text
  else
    qryClientes.SQL.Text := 'SELECT * FROM clienteS';
  qryClientes.Open;
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

