unit relCategoriaU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset;

type

  { TrelCategoriaF }

  TrelCategoriaF = class(TForm)
    btnRelCategoria: TBitBtn;
    frDBDSRelCategoria: TfrDBDataSet;
    frRelCategoria: TfrReport;
    qryRelCategoria: TZQuery;
    procedure btnRelCategoriaClick(Sender: TObject);
  private

  public

  end;

var
  relCategoriaF: TrelCategoriaF;

implementation

{$R *.lfm}

{ TrelCategoriaF }

procedure TrelCategoriaF.btnRelCategoriaClick(Sender: TObject);
begin
frRelCategoria.LoadFromFile('relatorios/relCategoria.lrf');
  frRelCategoria.PrepareReport;
  frRelCategoria.ShowReport;
end;

end.

