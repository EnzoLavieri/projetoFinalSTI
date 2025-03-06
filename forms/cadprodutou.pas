unit cadProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  LR_Class, ZDataset, ZSqlUpdate, ZAbstractRODataset, xCadPai, DB;

type

  { TcadProdutosF }

  TcadProdutosF = class(TxCadPaiF)
    edtIdProduto: TDBEdit;
    edtCategoria: TDBEdit;
    edtDescricao: TDBEdit;
    edtObservacao: TDBEdit;
    edtValor: TDBEdit;
    edtData: TDBEdit;
    edtStatus: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ZQuery1: TZQuery;
    ZQuery1categoriaprodutoid: TZIntegerField;
    ZQuery1ds_produto: TZRawStringField;
    ZQuery1dt_cadastro_produto: TZDateTimeField;
    ZQuery1obs_produto: TZRawStringField;
    ZQuery1produtoid: TZIntegerField;
    ZQuery1status_produto: TZRawStringField;
    ZQuery1vl_venda_produto: TZBCDField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure edtPesqClick(Sender: TObject);

  private

  public

  end;

var
  cadProdutosF: TcadProdutosF;

implementation

{$R *.lfm}

{ TcadProdutosF }



procedure TcadProdutosF.edtPesqClick(Sender: TObject);
begin
    ZQuery1.Close;
  if Edit1.Text <> '' then
    ZQuery1.SQL.Text := 'SELECT * FROM produto WHERE PRODUTOID = ' + Edit1.Text
  else
    ZQuery1.SQL.Text := 'SELECT * FROM produto';
  ZQuery1.Open;
end;

procedure TcadProdutosF.btnExluirClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('Voce tem certeza que deseja excluir o registro ' +
    edtIdProduto.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;

  end;
end;

end.

