unit usuariosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids, ZSqlUpdate, ZDataset, ZAbstractRODataset, xCadPai, DB, Types;

type

  { TcadUsuariosF }

  TcadUsuariosF = class(TxCadPaiF)
    edtIdUsuario: TDBEdit;
    edtUsuario: TDBEdit;
    edtNomeUsuario: TDBEdit;
    edtSenhaUsuario: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ZQuery1: TZQuery;
    ZQuery1id: TZIntegerField;
    ZQuery1nome_completo: TZRawStringField;
    ZQuery1senha: TZRawStringField;
    ZQuery1usuario: TZRawStringField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);


    procedure edtPesqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  cadUsuariosF: TcadUsuariosF;

implementation


{$R *.lfm}

{ TcadUsuariosF }


procedure TcadUsuariosF.edtPesqClick(Sender: TObject);
begin
  ZQuery1.Close;
  if Edit1.Text <> '' then
    ZQuery1.SQL.Text := 'SELECT * FROM usuarios WHERE id = ' + Edit1.Text
  else
    ZQuery1.SQL.Text := 'SELECT * FROM usuarios';
  ZQuery1.Open;
end;

procedure TcadUsuariosF.FormCreate(Sender: TObject);
begin
  ZQuery1.Active := True;
end;

procedure TcadUsuariosF.TabSheet2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TcadUsuariosF.btnExluirClick(Sender: TObject);
begin
  if MessageDlg('Voce tem certeza que deseja excluir o usuario ' + edtIdUsuario.Text +'?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;
  end;
end;

procedure TcadUsuariosF.btnGravarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

end.

