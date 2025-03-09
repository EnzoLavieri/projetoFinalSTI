unit categoriaProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, xCadPai,
  StdCtrls, ZDataset, ZSqlUpdate;
type

  { TcadCategProdutosF }

  TcadCategProdutosF = class(TxCadPaiF)
    edtIDCatProdutos: TDBEdit;
    edtDescCategoria: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    ZQuery1: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure edtPesqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

  public

  end;

var
  cadCategProdutosF: TcadCategProdutosF;

implementation

{$R *.lfm}

{ TcadCategProdutosF }




procedure TcadCategProdutosF.edtPesqClick(Sender: TObject);
begin
    ZQuery1.Close;
  if Edit1.Text <> '' then
    ZQuery1.SQL.Text := 'SELECT * FROM CATEGORIA_PRODUTO WHERE CATEGORIAPRODUTOID = ' + Edit1.Text
  else
    ZQuery1.SQL.Text := 'SELECT * FROM CATEGORIA_PRODUTO';
  ZQuery1.Open;
end;

procedure TcadCategProdutosF.FormCreate(Sender: TObject);
begin
  ZQuery1.Active := True;
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

