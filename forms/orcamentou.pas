unit orcamentoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  Buttons, DBGrids, StdCtrls, ZDataset, ZAbstractRODataset,
  xCadPai, SQLDB, DB, orcamentoItemU;

type

  { TorcamentoF }

  TorcamentoF = class(TxCadPaiF)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dsOrcamentoItem: TDataSource;
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
    procedure AbreOrcItens(orcamentoid: integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
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

procedure TorcamentoF.AbreOrcItens(orcamentoid: integer);
begin
  if orcamentoid <> 0 then
  begin
    qryOrcamentoItem.Close;
    qryOrcamentoItem.SQL.Clear;
    qryOrcamentoItem.SQL.Add(
      'SELECT ' + 'ORCAMENTOITEMID, ' +
      'ORCAMENTOID, ' + 'PRODUTOID, ' +
      //'produtodesc, '+
      'QT_PRODUTO, ' + 'VL_UNITARIO, ' +
      'VL_TOTAL ' + 'FROM ORCAMENTO_ITEM ' +
      'WHERE ORCAMENTOID = ' + IntToStr(orcamentoid) +
      ' ' + 'ORDER BY ORCAMENTOID');
    //ShowMessage(qryOrcamentoItem.SQL.Text);
    qryOrcamentoItem.Open;
  end;
end;


procedure TorcamentoF.FormCreate(Sender: TObject);
begin
  qryOrcamentos.Active := True;
end;

procedure TorcamentoF.BitBtn1Click(Sender: TObject);
begin
   dsOrcamentoItem.DataSet.Post;
end;

procedure TorcamentoF.BitBtn3Click(Sender: TObject);
begin
  orcamentoItemF := TorcamentoItemF.Create(Self);
  orcamentoItemF.ShowModal;
end;

procedure TorcamentoF.btnNovoClick(Sender: TObject);
begin
  inherited;
  qryOrcamentos.insert;
  AbreOrcItens(qryOrcamentosorcamentoid.AsInteger);
end;

procedure TorcamentoF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  AbreOrcItens(qryOrcamentosorcamentoid.AsInteger);
end;

procedure TorcamentoF.PageControl1Change(Sender: TObject);
begin
  AbreOrcItens(qryOrcamentosorcamentoid.AsInteger);
end;

end.
