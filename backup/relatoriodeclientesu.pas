unit relatorioDeClientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset, ZAbstractRODataset;

type

  { TrelClientes }

  TrelClientes = class(TForm)
    btnRelClientes: TBitBtn;
    frDBDSClientes: TfrDBDataSet;
    frClientes: TfrReport;
    qryClientes: TZQuery;
    procedure btnRelClientesClick(Sender: TObject);
  private

  public

  end;

var
  relClientes: TrelClientes;

implementation

{$R *.lfm}

{ TrelClientes }

procedure TrelClientes.btnRelClientesClick(Sender: TObject);
begin
  frClientes.LoadFromFile('relatorios/relClientes.lrf');
  frClientes.PrepareReport;
  frClientes.ShowReport;
end;

end.

