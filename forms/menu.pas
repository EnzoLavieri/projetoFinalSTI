unit menu;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, Menus;

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
  private

  public

  end;

var
  menuF: TmenuF;

implementation

{$R *.lfm}

end.

