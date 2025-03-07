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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
  private

  public

  end;

var
  orcamentoItemF: TorcamentoItemF;

implementation

{$R *.lfm}

end.

