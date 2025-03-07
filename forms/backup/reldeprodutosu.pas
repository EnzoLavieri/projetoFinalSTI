unit relDeProdutosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ZDataset,
  LR_Class, LR_DBSet;

type

  { TrelDeProdutosF }

  TrelDeProdutosF = class(TForm)
    btnRelProdutos: TBitBtn;
    frDBDSRelProdutos: TfrDBDataSet;
    frProdutos: TfrReport;
    qryRelProdutos: TZQuery;
    procedure btnRelProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  relDeProdutosF: TrelDeProdutosF;

implementation

{$R *.lfm}

{ TrelDeProdutosF }

procedure TrelDeProdutosF.FormCreate(Sender: TObject);
begin

end;

procedure TrelDeProdutosF.btnRelProdutosClick(Sender: TObject);
begin
  frProdutos.LoadFromFile('relatorios/relProdutos.lrf');
  frProdutos.PrepareReport;
  frProdutos.ShowReport;
end;

end.

