unit usuariosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids, ZSqlUpdate, ZDataset, ZAbstractRODataset, xCadPai, DB;

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


    procedure edtPesqClick(Sender: TObject);
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

procedure TcadUsuariosF.btnExluirClick(Sender: TObject);
begin
  if MessageDlg('Voce tem certeza que deseja excluir o registro ' +
    edtIdUsuario.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadModelo.DataSet.Delete;

  end;
end;

end.

