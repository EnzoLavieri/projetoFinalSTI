unit categoriaProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, xCadPai,StdCtrls;
type

  { TcadCategProdutosF }

  TcadCategProdutosF = class(TxCadPaiF)
    edtID: TDBEdit;
    edtDescCategoria: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;

  private

  public

  end;

var
  cadCategProdutosF: TcadCategProdutosF;

implementation

{$R *.lfm}

{ TcadCategProdutosF }




end.

