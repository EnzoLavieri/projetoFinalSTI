unit xCadPai;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, ComCtrls, DBGrids, AnchorDockPanel;

type

  { TxCadPaiF }

  TxCadPaiF = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnNovo: TBitBtn;
    btnFechar: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnNovo1: TBitBtn;
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
    procedure BitBtn4Click(Sender: TObject);
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
      PageControl1.ActivePageIndex:=1;
end;

procedure TxCadPaiF.BitBtn4Click(Sender: TObject);
begin
     PageControl1.ActivePageIndex:=0;
end;



end.

