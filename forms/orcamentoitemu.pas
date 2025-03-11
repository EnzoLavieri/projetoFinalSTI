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
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnInserir1Click(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
  private

  public

  end;

var
  orcamentoItemF: TorcamentoItemF;

implementation

{$R *.lfm}

uses cadProdutoU,pesProdutoU;

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

end.
