unit categoriaProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, xCadPai, DB,
  SQLDB, StdCtrls, Buttons, DBGrids, ZDataset, ZSqlUpdate, ZAbstractRODataset;

type

  { TcadCategProdutosF }

  TcadCategProdutosF = class(TxCadPaiF)
    edtIDCatProdutos: TDBEdit;
    edtDescCategoria: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    qryCetegProdutos: TZQuery;
    updtCategProdutos: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private

  public

  end;

var
  cadCategProdutosF: TcadCategProdutosF;

implementation

{$R *.lfm}

{ TcadCategProdutosF }

procedure TcadCategProdutosF.FormCreate(Sender: TObject);
begin
  qryCetegProdutos.Active := True;
end;

procedure TcadCategProdutosF.SpeedButton1Click(Sender: TObject);
begin
  qryCetegProdutos.Close;
  if Edit1.Text <> '' then
    qryCetegProdutos.SQL.Text := 'SELECT * FROM CATEGORIA_PRODUTO WHERE CATEGORIAPRODUTOID = ' +
      Edit1.Text
  else
    qryCetegProdutos.SQL.Text := 'SELECT * FROM CATEGORIA_PRODUTO';
  qryCetegProdutos.Open;
end;

procedure TcadCategProdutosF.btnExluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Voce tem certeza que deseja excluir o registro ' +
    edtIDCatProdutos.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;

  end;
end;

end.

