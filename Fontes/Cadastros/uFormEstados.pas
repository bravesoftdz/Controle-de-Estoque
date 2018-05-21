unit uFormEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormEstados = class(TFormCadPadrao)
    DS_Estados: TDataSource;
    Label1: TLabel;
    DBEdit_CodEstado: TDBEdit;
    Label2: TLabel;
    DBEdit_NomeEstado: TDBEdit;
    Label3: TLabel;
    DBEdit_UF: TDBEdit;
    Label4: TLabel;
    DBEdit_NomePais: TDBEdit;
    procedure BTN_NovoClick(Sender: TObject);
    procedure BTN_EditarClick(Sender: TObject);
    procedure BTN_SalvarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_CancelarClick(Sender: TObject);
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
  FormEstados: TFormEstados;

implementation

{$R *.dfm}

{ TFormEstados }

procedure TFormEstados.BTN_CancelarClick(Sender: TObject);
begin
  Cancelar
end;

procedure TFormEstados.BTN_EditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormEstados.BTN_ExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFormEstados.BTN_NovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFormEstados.BTN_SalvarClick(Sender: TObject);
begin

  Salvar;
end;

procedure TFormEstados.Cancelar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Estados.DataSet.Cancel;
  Except
    on e:Exception do
      ShowMessage('Erro ao cancelar!');
  end;
end;

procedure TFormEstados.Editar;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := True;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  DBEdit_NomeEstado.SetFocus;

  try
    DS_Estados.DataSet.Edit;
  except
    on e:Exception do
      ShowMessage('Erro ao editar o registro!');
  end;

end;

procedure TFormEstados.Excluir;
begin
  ShowMessage('O registro será excluído permanentemente!');

  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Estados.DataSet.Delete;
  except
    on e:Exception do
      ShowMessage('Erro ao excluir o registro!');
  end;

end;

procedure TFormEstados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormEstados.Novo;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  try
    DS_Estados.DataSet.Append;
  except
    on e:Exception do
      ShowMessage('Erro');
  end;

  DBEdit_NomeEstado.SetFocus;

end;

procedure TFormEstados.Salvar;
begin
  if DBEdit_NomeEstado.Text = '' then
    begin
      ShowMessage('Digite o nome do estado!');
      DBEdit_NomeEstado.SetFocus;
      Exit;
    end;

  if DBEdit_UF.Text = '' then
    begin
      ShowMessage('Digite a Sigla do estado!');
      DBEdit_UF.SetFocus;
      Exit;
    end;

  if DBEdit_NomePais.Text = '' then
    begin
      ShowMessage('Digite o nome do País!');
      DBEdit_NomePais.SetFocus;
      Exit;
    end;


  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Estados.DataSet.Post;
  except
    on e:Exception do
      ShowMessage('Erro ao salvar o registro!');
  end;

end;

end.
