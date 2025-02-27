unit xCadPai;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, ComCtrls, DBGrids;  // Remover menu da seção uses

type
  { TxCadPaiF }
  TxCadPaiF = class(TForm)
    btnGravar: TBitBtn;
    btnExluir: TBitBtn;
    btnNovo: TBitBtn;
    btnFechar: TBitBtn;
    btnCancelar: TBitBtn;
    edtPesq: TBitBtn;
    dsCadModelo: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
  public
  end;

var
  xCadPaiF: TxCadPaiF;

implementation

{$R *.lfm}

  { TxCadPaiF }

procedure TxCadPaiF.btnNovoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TxCadPaiF.btnCancelarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TxCadPaiF.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.

