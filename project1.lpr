program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, anchordockpkg, xCadPai, menu, usuariosU, clientesU, categoriaProdutoU;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TxCadPaiF, xCadPaiF);
  Application.CreateForm(TmenuF, menuF);
  Application.CreateForm(TcadUsuariosF, cadUsuariosF);
  Application.CreateForm(TcadClientesF, cadClientesF);
  Application.CreateForm(TxCadPaiF1, xCadPaiF1);
  Application.Run;
end.

