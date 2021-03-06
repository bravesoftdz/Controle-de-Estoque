unit uFormFabricantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormFabricantes = class(TFormCadPadrao)
    Label1: TLabel;
    DBEdit_CodFabricante: TDBEdit;
    DS_Fabricantes: TDataSource;
    Label2: TLabel;
    DBEdit_NomeFabricante: TDBEdit;
    Label3: TLabel;
    DBEdit_DtCadFabricante: TDBEdit;
    procedure BTN_NovoClick(Sender: TObject);
    procedure BTN_EditarClick(Sender: TObject);
    procedure BTN_SalvarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_CancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Novo;
    procedure Editar;
    procedure Cancelar;
    procedure Excluir;
    procedure Salvar;
  public
    { Public declarations }
  end;

var
  FormFabricantes: TFormFabricantes;

implementation

{$R *.dfm}

{ TFormFabricantes }

procedure TFormFabricantes.BTN_CancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar;
end;

procedure TFormFabricantes.BTN_EditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormFabricantes.BTN_ExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFormFabricantes.BTN_NovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFormFabricantes.BTN_SalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TFormFabricantes.Cancelar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Fabricantes.DataSet.Cancel;
  Except
    on e:Exception do
      ShowMessage('Erro ao cancelar!');
  end;
end;

procedure TFormFabricantes.Editar;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := True;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  DBEdit_NomeFabricante.SetFocus;

  try
    DS_Fabricantes.DataSet.Edit;
  except
    on e:Exception do
      ShowMessage('Erro ao editar o registro!');
  end;
end;

procedure TFormFabricantes.Excluir;
begin
  ShowMessage('O registro ser� exclu�do permanentemente!');

  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Fabricantes.DataSet.Delete;
  except
    on e:Exception do
      ShowMessage('Erro ao excluir o registro!');
  end;
end;

procedure TFormFabricantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormFabricantes.FormShow(Sender: TObject);
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;
end;

procedure TFormFabricantes.Novo;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  try
    DS_Fabricantes.DataSet.Append;
  except
    on e:Exception do
      ShowMessage('Erro');
  end;

  DBEdit_NomeFabricante.SetFocus;
end;

procedure TFormFabricantes.Salvar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  if DBEdit_NomeFabricante.Text = '' then
    begin
      ShowMessage('Digite o nome do fabricante!');
      DBEdit_NomeFabricante.SetFocus;
      Exit;
    end;

  try
    //Grava a data atual
    DBEdit_DtCadFabricante.Text := DateToStr(Date);
    DS_Fabricantes.DataSet.Post;
  except
    on e:Exception do
      ShowMessage('Erro ao salvar o registro!');
  end;

  BTN_Novo.SetFocus;

end;

end.
