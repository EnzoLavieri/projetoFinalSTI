unit orcamentoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, DBGrids, StdCtrls, ZDataset, ZAbstractRODataset, ZConnection,
  xCadPai, SQLDB, DB, dataModule;

type

  { TorcamentoF }

  TorcamentoF = class(TxCadPaiF)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
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
    qryOrcamentoItemorcamentoitemid: TZIntegerField;
    qryOrcamentoItemprodutoid: TZIntegerField;
    qryOrcamentoItemqt_produto: TZBCDField;
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
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

var
  orcamentoF: TorcamentoF;

implementation

{$R *.lfm}

{ TorcamentoF }

procedure TorcamentoF.AbreOrcItens(orcamentoid: Integer);
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
                    'produtodesc, '+
                    'QT_PRODUTO, '+
                    'VL_UNITARIO, '+
                    'VL_TOTAL '+
                    'FROM ORCAMENTO_ITEM ' +
                    'WHERE ORCAMENTOID = '+ IntToStr(orcamentoid) + ' ' +
                    'ORDER BY ORCAMENTOID');

    ShowMessage(qryOrcamentoItem.SQL.Text); // Verifique o SQL gerado

    try
      qryOrcamentoItem.Open;
      if qryOrcamentoItem.Active then
      begin
        ShowMessage('Query aberta com ' + IntToStr(qryOrcamentoItem.RecordCount) + ' registros.');
        DBGrid2.Refresh; // Força a atualização do DBGrid
      end
      else
      begin
        ShowMessage('Query não foi aberta.');
      end;
    except
      on E: Exception do
        ShowMessage('Erro ao abrir query: ' + E.Message);
    end;
  end;
end;

procedure TorcamentoF.DBGrid2DblClick(Sender: TObject);
begin
  AbreOrcItens(qryOrcamentosorcamentoid.AsInteger);
end;


procedure TorcamentoF.FormCreate(Sender: TObject);
begin
  qryOrcamentos.Active := True;
end;

procedure TorcamentoF.PageControl1Change(Sender: TObject);
begin

end;

end.

