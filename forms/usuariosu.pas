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
    qryUsuariosid: TZIntegerField;
    qryUsuariosnome_completo: TZRawStringField;
    qryUsuariossenha: TZRawStringField;
    qryUsuariosusuario: TZRawStringField;
    updtUsuarios: TZUpdateSQL;
    procedure btnExluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtPesqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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

procedure TcadUsuariosF.btnExluirClick(Sender: TObject);
begin
  if MessageDlg('Voce tem certeza que deseja excluir o usuario ' +
    edtNomeUsuario.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;
  end;
end;

procedure TcadUsuariosF.btnGravarClick(Sender: TObject);
begin
  inherited;
    //gambiarra pra funcionar
    if not (dsCadModelo.DataSet.State in [dsEdit, dsInsert]) then
    dsCadModelo.DataSet.Edit;
  dsCadModelo.DataSet.Post;
end;

procedure TcadUsuariosF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
      if not (dsCadModelo.DataSet.State in [dsEdit, dsInsert]) then
    dsCadModelo.DataSet.Edit;
      dsCadModelo.DataSet.Post;

end;

end.

