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
  Forms, anchordockpkg, xCadPai, menu, usuariosU, clientesU, categoriaProdutoU,
  cadProdutoU;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TmenuF, menuF);
  Application.CreateForm(TxCadPaiF, xCadPaiF);
  Application.CreateForm(TcadUsuariosF, cadUsuariosF);
  Application.CreateForm(TcadClientesF, cadClientesF);
  Application.CreateForm(TcadCategProdutosF, cadCategProdutosF);
  Application.CreateForm(TcadProdutosF, cadProdutosF);
  Application.Run;
end.

