unit orcamentoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, DBGrids, StdCtrls, ZDataset, ZAbstractRODataset, xCadPai, SQLDB,
  DB,dataModule;

type

  { TorcamentoF }

  TorcamentoF = class(TxCadPaiF)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    qryOrcamentoItemorcamentoid: TZIntegerField;
    qryOrcamentoItemorcamentoitemid: TZIntegerField;
    qryOrcamentoItemprodutoid: TZIntegerField;
    qryOrcamentoItemqt_produto: TZIntegerField;
    qryOrcamentoItemvl_total: TZBCDField;
    qryOrcamentoItemvl_unitario: TZBCDField;
    qryOrcamentos: TZQuery;
    qryOrcamentoItem: TZQuery;
    qryOrcamentosclienteid: TZIntegerField;
    qryOrcamentosdt_orcamento: TZDateTimeField;
    qryOrcamentosdt_validade_orcamento: TZDateTimeField;
    qryOrcamentosorcamentoid: TZIntegerField;
    qryOrcamentosvl_total_orcamento: TZBCDField;
    procedure AbreOrcItens(orcamentoid : Integer);
    procedure DBGrid2DblClick(Sender: TObject);
  private

  public

  end;

var
  orcamentoF: TorcamentoF;

implementation

{$R *.lfm}

{ TorcamentoF }

procedure TorcamentoF.AbreOrcItens(orcamentoid : Integer);
begin
  if orcamentoid <> 0 then
  begin
      qryOrcamentoItem.Close;
      qryOrcamentoItem.SQL.Clear;
      qryOrcamentoItem.SQL.Add(
                      'SELECT '+
                      'ORCAMENTOITEMID, '+
                      'ORCAMENTOID, '+
                      'PRODUTOID, '+
                      //'produtodesc, '+
                      'QT_PRODUTO, '+
                      'VL_UNITARIO, '+
                      'VL_TOTAL '+
                      'FROM ORCAMENTO_ITEM ' +
                      'WHERE ORCAMENTOID = '+ inttostr(orcamentoid) + ' ' +
                      'ORDER BY ORCAMENTOID');
       //ShowMessage(DataModule1.qryOrcamentoItem.SQL.Text);
       qryOrcamentoItem.Open;
  end;
end;

procedure TorcamentoF.DBGrid2DblClick(Sender: TObject);
begin
    AbreOrcItens(qryOrcamentosorcamentoid.AsInteger);
end;

end.

