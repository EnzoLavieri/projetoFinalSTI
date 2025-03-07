unit relOrcamentosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset;

type

  { TrelOrcamentosF }

  TrelOrcamentosF = class(TForm)
    btnRelOrcamentos: TBitBtn;
    frDBDSRelOrcamentos: TfrDBDataSet;
    frRelOrcamentos: TfrReport;
    qryRelOrcamentos: TZQuery;
    procedure btnRelOrcamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  relOrcamentosF: TrelOrcamentosF;

implementation

{$R *.lfm}

{ TrelOrcamentosF }

procedure TrelOrcamentosF.btnRelOrcamentosClick(Sender: TObject);
begin
  frRelOrcamentos.LoadFromFile('relatorios/relOrcamentos.lrf');
  frRelOrcamentos.PrepareReport;
  frRelOrcamentos.ShowReport;
end;

end.

