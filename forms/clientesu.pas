unit clientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons, ZDataset, ZSqlUpdate, ZAbstractRODataset, xCadPai,DB;

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
    qryClientesclienteid: TZIntegerField;
    qryClientescpf_cnpj_cliente: TZRawStringField;
    qryClientesnome_cliente: TZRawStringField;
    qryClientestipo_cliente: TZRawStringField;
    updtClientes: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
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
  if MessageDlg('Voce tem certeza que deseja excluir cliente ' +
    edtNomeCliente.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;

  end;
end;

procedure TcadClientesF.btnGravarClick(Sender: TObject);
begin
  inherited;
  //gambiarra pra funcionar
  if not (dsCadModelo.DataSet.State in [dsEdit, dsInsert]) then
    dsCadModelo.DataSet.Edit;
  //dsCadModelo.DataSet.Post;
end;

end.

