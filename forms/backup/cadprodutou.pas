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
    updtProdutos: TZQuery;
    ZQuery1Datadecadastro: TZDateTimeField;
    updtProdutosDescicao: TZRawStringField;
    updtProdutosID: TZIntegerField;
    ZQuery1IDdacategoria: TZIntegerField;
    updtProdutosObservacao: TZRawStringField;
    updtProdutosPreco: TZBCDField;
    updtProdutosStatus: TZRawStringField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
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
  updtProdutos.Active := True;
end;

procedure TcadProdutosF.SpeedButton1Click(Sender: TObject);
begin
  updtProdutos.Close;
  if Edit1.Text <> '' then
    updtProdutos.SQL.Text := 'SELECT * FROM produto WHERE PRODUTOID = ' + Edit1.Text
  else
    updtProdutos.SQL.Text := 'SELECT * FROM produto';
  updtProdutos.Open;
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

