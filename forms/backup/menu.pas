unit menu;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus,
  categoriaProdutoU, clientesU, cadProdutoU, usuariosU, relatorioDeClientesU,
  relDeProdutosU, sobreU, relOrcamentosU, relCategoriaU, orcamentoU;

type

  { TmenuF }

  TmenuF = class(TForm)
    MainMenu1: TMainMenu;
    menuCad: TMenuItem;
    menuCadUsuarios: TMenuItem;
    menuCadOrcamentos: TMenuItem;
    menuRelatCategorias: TMenuItem;
    menuRelatOrcamentos: TMenuItem;
    menuRelatProdutos: TMenuItem;
    menuRelatClientes: TMenuItem;
    menuVenOrcamentos: TMenuItem;
    menuVen: TMenuItem;
    menuRelat: TMenuItem;
    MenuSobre: TMenuItem;
    menuSair: TMenuItem;
    menuCadCategoria: TMenuItem;
    menuCadCliente: TMenuItem;
    menuCadProdutos: TMenuItem;
    procedure menuCadCategoriaClick(Sender: TObject);
    procedure menuCadClienteClick(Sender: TObject);
    procedure menuCadOrcamentosClick(Sender: TObject);
    procedure menuCadProdutosClick(Sender: TObject);
    procedure menuCadUsuariosClick(Sender: TObject);
    procedure menuRelatCategoriasClick(Sender: TObject);
    procedure menuRelatClientesClick(Sender: TObject);
    procedure menuRelatOrcamentosClick(Sender: TObject);
    procedure menuRelatProdutosClick(Sender: TObject);
    procedure menuSairClick(Sender: TObject);
    procedure MenuSobreClick(Sender: TObject);
  private

  public

  end;

var
  menuF: TmenuF;

implementation

{$R *.lfm}

{ TmenuF }

procedure TmenuF.menuCadCategoriaClick(Sender: TObject);
begin
  cadCategProdutosF := TcadCategProdutosF.Create(Self);
  cadCategProdutosF.ShowModal;
end;

procedure TmenuF.menuCadClienteClick(Sender: TObject);
begin
  cadClientesF := TcadClientesF.Create(Self);
  cadClientesF.ShowModal;

end;

procedure TmenuF.menuCadOrcamentosClick(Sender: TObject);
begin

end;

procedure TmenuF.menuCadProdutosClick(Sender: TObject);
begin
  cadProdutosF := TcadProdutosF.Create(Self);
  cadProdutosF.ShowModal;
end;

procedure TmenuF.menuCadUsuariosClick(Sender: TObject);
begin
  cadUsuariosF := TcadUsuariosF.Create(Self);
  cadUsuariosF.ShowModal;
end;

procedure TmenuF.menuRelatCategoriasClick(Sender: TObject);
begin
  relCategoriaF := TrelCategoriaF.Create(Self);
  relCategoriaF.ShowModal;
end;

procedure TmenuF.menuRelatClientesClick(Sender: TObject);
begin
  relClientes := TrelClientes.Create(Self);
  relClientes.ShowModal;
end;

procedure TmenuF.menuRelatOrcamentosClick(Sender: TObject);
begin
  relOrcamentosF := TrelOrcamentosF.Create(Self);
  relOrcamentosF.ShowModal;
end;

procedure TmenuF.menuRelatProdutosClick(Sender: TObject);
begin
  relDeProdutosF := TrelDeProdutosF.Create(Self);
  relDeProdutosF.ShowModal;
end;

procedure TmenuF.menuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TmenuF.MenuSobreClick(Sender: TObject);
begin
  sobreF := TsobreF.Create(Self);
  sobreF.ShowModal;
end;



end.

