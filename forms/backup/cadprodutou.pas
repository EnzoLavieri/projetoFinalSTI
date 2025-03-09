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
    ZQuery1: TZQuery;
    ZQuery1Datadecadastro: TZDateTimeField;
    ZQuery1Descicao: TZRawStringField;
    ZQuery1ID: TZIntegerField;
    ZQuery1IDdacategoria: TZIntegerField;
    ZQuery1Observacao: TZRawStringField;
    ZQuery1Preco: TZBCDField;
    ZQuery1Status: TZRawStringField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
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
  ZQuery1.Active := True;
end;

procedure TcadProdutosF.SpeedButton1Click(Sender: TObject);
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

