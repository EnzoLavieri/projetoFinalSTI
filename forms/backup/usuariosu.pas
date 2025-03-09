unit usuariosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids, Buttons, ZSqlUpdate, ZDataset, ZAbstractRODataset, xCadPai, DB,
  Types;

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
    qryUsuarios: TZQuery;
    qryUsuariosID: TZIntegerField;
    qryUsuariosNomecompleto: TZRawStringField;
    qryUsuariosNomedousuario: TZRawStringField;
    qryUsuariosSenha: TZRawStringField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);


    procedure edtPesqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
  qryUsuarios.Close;
  if Edit1.Text <> '' then
    qryUsuarios.SQL.Text := 'SELECT * FROM usuarios WHERE id = ' + Edit1.Text
  else
    qryUsuarios.SQL.Text := 'SELECT * FROM usuarios';
  qryUsuarios.Open;
end;

procedure TcadUsuariosF.FormCreate(Sender: TObject);
begin
  qryUsuarios.Active := True;
end;

procedure TcadUsuariosF.SpeedButton1Click(Sender: TObject);
begin
     qryUsuarios.Close;
  if Edit1.Text <> '' then
    qryUsuarios.SQL.Text := 'SELECT * FROM usuarios WHERE id = ' + Edit1.Text
  else
    qryUsuarios.SQL.Text := 'SELECT * FROM usuarios';
  qryUsuarios.Open;
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

