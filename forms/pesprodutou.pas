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
<<<<<<< HEAD
    'select p.produtoid, ' +
    'p.categoriaprodutoid, ' +
    'cp.ds categoria produto, ' +
    'p.ds produto, ' +
    'p.obs produto, ' +
    'p.vi_venda_produto, ' +
    'p.dt_cadastro_produno, ' +
    'p.status produto, ' +
    'from produto p, categoria_produto cp, ' +
    'where p.categoriaprodutoid cp.categoriaprodutoid  , ' + AuxWhere;
=======
    'SELECT ' + 'PRODUTOID, ' + 'CATEGORIAPRODUTOID, ' + 'DS_PRODUTO' +
    'OBS_PRODUTO, ' + 'VL_VENDA_PRODUTO, ' + 'DT_CADASTRO_PRODUTO, ' +
    'STATUS_PRODUTO, ' + 'FROM select * from produto ' + 'WHERE ' +
    AuxWhere + ' ' + 'ORDER BY CATEGORIAPRODUTOID';
>>>>>>> 47db0885b5910963ca5074b76465a8e4af654f2a
  cadProdutosF.qryProdutos.Open;
end;

procedure TpesProdutoF.DBGrid1DblClick(Sender: TObject);
begin
<<<<<<< HEAD
  orcamentoF.qryOrcamentoItem.Insert;
  orcamentoF.qryOrcamentoItemorcamentoid.AsInteger := orcamentoF.qryOrcamentosorcamentoid.AsInteger;
  orcamentoF.qryOrcamentoItemprodutoid.AsFloat := cadProdutosF.qryProdutosprodutoid.AsInteger;
  orcamentoF.qryOrcamentoItemvl_unitario.AsFloat := cadProdutosF.qryProdutosvl_venda_produto.AsFloat;
  Close;
  orcamentoItemF.DBEdit2.SetFocus;
end;




=======
  orcamentoItemF.DBEdit1.Text := cadProdutosF.qryProdutosds_produto.AsString;
  orcamentoItemF.DBEdit2.Text := cadProdutosF.qryProdutosobs_produto.AsString;
  orcamentoItemF.DBEdit4.Text := cadProdutosF.qryProdutosvl_venda_produto.AsString;
  close;
end;

>>>>>>> 47db0885b5910963ca5074b76465a8e4af654f2a
end.
