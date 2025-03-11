unit pesProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBGrids, ZDataset, ZAbstractRODataset, orcamentoU, orcamentoItemU;

type

  { TpesProdutoF }

  TpesProdutoF = class(TForm)
    btnPesquisa: TBitBtn;
    dsCadProduto: TDataSource;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Panel1: TPanel;
    qryPesqProdutos: TZQuery;
    qryPesqProdutoscategoriaprodutoid: TZIntegerField;
    qryPesqProdutosds_categoria_produto: TZRawStringField;
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private

  public

  end;

var
  pesProdutoF: TpesProdutoF;

implementation

{$R *.lfm}

uses cadProdutoU, categoriaProdutoU;

  { TpesProdutoF }

procedure TpesProdutoF.btnPesquisaClick(Sender: TObject);
var
  AuxWhere: string;
begin
  if edtPesquisa.Text = '' then
    AuxWhere := '1 = 1'
  else
    AuxWhere := 'CATEGORIAPRODUTOID = ' + edtPesquisa.Text;


  cadProdutosF.qryProdutos.Close;
  cadProdutosF.qryProdutos.SQL.Text :=
    'SELECT ' + 'PRODUTOID, ' + 'CATEGORIAPRODUTOID, ' + 'DS_PRODUTO' +
    'OBS_PRODUTO, ' + 'VL_VENDA_PRODUTO, ' + 'DT_CADASTRO_PRODUTO, ' +
    'STATUS_PRODUTO, ' + 'FROM select * from produto ' + 'WHERE ' +
    AuxWhere + ' ' + 'ORDER BY CATEGORIAPRODUTOID';
  cadProdutosF.qryProdutos.Open;
end;

procedure TpesProdutoF.DBGrid1DblClick(Sender: TObject);
begin
  orcamentoItemF.DBEdit1.Text := cadProdutosF.qryProdutosds_produto.AsString;
  orcamentoItemF.DBEdit2.Text := cadProdutosF.qryProdutosobs_produto.AsString;
  orcamentoItemF.DBEdit4.Text := cadProdutosF.qryProdutosvl_venda_produto.AsFloat;
  close;
end;

end.
