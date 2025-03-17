unit orcamentoItemU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  Buttons;

type

  { TorcamentoItemF }

  TorcamentoItemF = class(TForm)
    btnInserir: TBitBtn;
    btnCancelar: TBitBtn;
    btnInserir1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dbEdtVlUnit: TDBEdit;
    edtQtde: TEdit;
    edtVlTotal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserir1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure CalcularMultiplicacao(Sender: TObject);
    procedure edtQtdeChange(Sender: TObject);
  private

  public

  end;

var
  orcamentoItemF: TorcamentoItemF;

implementation


{$R *.lfm}

uses cadProdutoU, pesProdutoU,orcamentoU;

  { TorcamentoItemF }

procedure TorcamentoItemF.DBEdit6Change(Sender: TObject);
begin
  cadProdutosF := TcadProdutosF.Create(Self);
  cadProdutosF.ShowModal;
end;

procedure TorcamentoItemF.btnInserir1Click(Sender: TObject);
begin
  pesProdutoF := TpesProdutoF.Create(Self);
  pesProdutoF.ShowModal;
end;

procedure TorcamentoItemF.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TorcamentoItemF.btnInserirClick(Sender: TObject);
begin
  close;
end;

procedure TorcamentoItemF.CalcularMultiplicacao(Sender: TObject);
var
  num1, num2, resultado: double;
begin
  if (edtQtde.Text = '') then
  begin
    edtVlTotal.Text := '';
    Exit;
  end;

  try
    num1 := StrToFloat(dbEdtVlUnit.Text);
    num2 := StrToFloat(edtQtde.Text);


    resultado := num1 * num2;

    edtVlTotal.Text := FloatToStr(resultado);
  except
    on E: Exception do
      edtVlTotal.Text := 'Erro';
  end;
end;

procedure TorcamentoItemF.edtQtdeChange(Sender: TObject);
var
  valorTotalItem : Double;
  quantiedadeProduto : Integer;
begin
  CalcularMultiplicacao(edtVlTotal);
  quantiedadeProduto := StrToInt(orcamentoItemF.edtQtde.Text);
  orcamentoF.qryOrcamentoItemqt_produto.AsInteger := quantiedadeProduto;
  valorTotalItem:= StrToFloat(orcamentoItemF.edtVlTotal.Text);
  orcamentoF.qryOrcamentoItemvl_total.AsFloat := valorTotalItem;
end;



end.
