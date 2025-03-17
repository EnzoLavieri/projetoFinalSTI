unit cadProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  Buttons, LR_Class, ZDataset, ZSqlUpdate, ZAbstractRODataset, xCadPai, DB;

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
    qryProdutos: TZQuery;
    qryProdutoscategoriaprodutoid: TZIntegerField;
    qryProdutosds_produto: TZRawStringField;
    qryProdutosdt_cadastro_produto: TZDateTimeField;
    qryProdutosobs_produto: TZRawStringField;
    qryProdutosprodutoid: TZIntegerField;
    qryProdutosstatus_produto: TZRawStringField;
    qryProdutosvl_venda_produto: TZBCDField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private

  public

  end;

var
  cadProdutosF: TcadProdutosF;

implementation

{$R *.lfm}

{ TcadProdutosF }

procedure TcadProdutosF.FormCreate(Sender: TObject);
begin
  qryProdutos.Active := True;
end;

procedure TcadProdutosF.SpeedButton1Click(Sender: TObject);
begin
  qryProdutos.Close;
  if Edit1.Text <> '' then
    qryProdutos.SQL.Text := 'SELECT * FROM produto WHERE PRODUTOID = ' + Edit1.Text
  else
    qryProdutos.SQL.Text := 'SELECT * FROM produto';
  qryProdutos.Open;
end;

procedure TcadProdutosF.btnExluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Voce tem certeza que deseja excluir o produto ' +
    edtDescricao.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;
  end;
end;

procedure TcadProdutosF.btnGravarClick(Sender: TObject);
begin
  inherited;
  //gambiarra pra funcionar
  if not (dsCadModelo.DataSet.State in [dsEdit, dsInsert]) then
    dsCadModelo.DataSet.Edit;
  dsCadModelo.DataSet.Post;
end;



end.
