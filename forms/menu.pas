unit menu;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus,
  categoriaProdutoU, clientesU, cadProdutoU, usuariosU, relatorioDeClientesU, relDeProdutosU;

type

  { TmenuF }

  TmenuF = class(TForm)
    MainMenu1: TMainMenu;
    menuCad: TMenuItem;
    menuCadUsuarios: TMenuItem;
    MenuItem1: TMenuItem;
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
    procedure menuCadProdutosClick(Sender: TObject);
    procedure menuCadUsuariosClick(Sender: TObject);
    procedure menuRelatClientesClick(Sender: TObject);
    procedure menuRelatProdutosClick(Sender: TObject);
    procedure menuSairClick(Sender: TObject);
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
  cadCategProdutosF.Show;
end;

procedure TmenuF.menuCadClienteClick(Sender: TObject);
begin
  cadClientesF := TcadClientesF.Create(Self);
  cadClientesF.ShowModal;

end;

procedure TmenuF.menuCadProdutosClick(Sender: TObject);
begin
  cadProdutosF := TcadProdutosF.Create(Self);
  cadProdutosF.Show;
end;

procedure TmenuF.menuCadUsuariosClick(Sender: TObject);
begin
  cadUsuariosF := TcadUsuariosF.Create(Self);
  cadUsuariosF.Show;
end;

procedure TmenuF.menuRelatClientesClick(Sender: TObject);
begin
  relClientes := TrelClientes.Create(Self);
  relClientes.Show;
end;

procedure TmenuF.menuRelatProdutosClick(Sender: TObject);
begin
  relDeProdutosF := TrelDeProdutosF.Create(Self);
  relDeProdutosF.Show;
end;

procedure TmenuF.menuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;



end.

