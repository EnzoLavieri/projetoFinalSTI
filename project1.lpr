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
  Forms, zcomponent, anchordockpkg, xCadPai, menu, usuariosU, clientesU,
  categoriaProdutoU, cadProdutoU, dataModule, relatorioDeClientesU, 
relDeProdutosU, relOrcamentosU, sobreU, relCategoriaU, 
orcamentoItemU, orcamentoU, pesProdutoU;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TmenuF, menuF);
  Application.CreateForm(TxCadPaiF, xCadPaiF);
  Application.CreateForm(TcadUsuariosF, cadUsuariosF);
  Application.CreateForm(TcadClientesF, cadClientesF);
  Application.CreateForm(TcadCategProdutosF, cadCategProdutosF);
  Application.CreateForm(TcadProdutosF, cadProdutosF);
  Application.CreateForm(TrelClientes,relClientes);
  Application.CreateForm(TrelDeProdutosF, relDeProdutosF);
  Application.CreateForm(TrelOrcamentosF, relOrcamentosF);
  Application.CreateForm(TsobreF, sobreF);
  Application.CreateForm(TrelCategoriaF, relCategoriaF);
  Application.CreateForm(TorcamentoItemF, orcamentoItemF);
  Application.CreateForm(TorcamentoF, orcamentoF);
  Application.CreateForm(TpesProdutoF, pesProdutoF);
  Application.Run;
end.

