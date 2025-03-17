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
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Panel1: TPanel;
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private

  public

  end;

var
  pesProdutoF: TpesProdutoF;

implementation

{$R *.lfm}

uses cadProdutoU;

  { TpesProdutoF }

procedure TpesProdutoF.btnPesquisaClick(Sender: TObject);
var
  AuxWhere: string;
begin
  if edtPesquisa.Text = '' then
    AuxWhere := ' AND 1=1'
  else
    AuxWhere := ' AND PRODUTOID = ' + edtPesquisa.Text;

  cadProdutosF.qryProdutos.Close;
  cadProdutosF.qryProdutos.SQL.Text :=
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
  cadProdutosF.qryProdutos.Open;
end;

procedure TpesProdutoF.DBGrid1DblClick(Sender: TObject);
begin
  orcamentoF.qryOrcamentoItem.Insert;
  orcamentoF.qryOrcamentoItemorcamentoid.AsInteger := orcamentoF.qryOrcamentosorcamentoid.AsInteger;
  orcamentoF.qryOrcamentoItemprodutoid.AsFloat := cadProdutosF.qryProdutosprodutoid.AsInteger;
  orcamentoF.qryOrcamentoItemvl_unitario.AsFloat := cadProdutosF.qryProdutosvl_venda_produto.AsFloat;
  Close;
  orcamentoItemF.DBEdit2.SetFocus;
end;




end.
