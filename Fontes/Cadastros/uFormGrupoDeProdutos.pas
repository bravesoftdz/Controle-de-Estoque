unit uFormGrupoDeProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormGrupoDeProdutos = class(TFormCadPadrao)
    Label1: TLabel;
    DBEdit_CodGrupo: TDBEdit;
    Label2: TLabel;
    DBEdit_NomeGrupo: TDBEdit;
    Label3: TLabel;
    DBEdit_DtCadGrupo: TDBEdit;
    DS_GrupoDeProdutos: TDataSource;
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
  FormGrupoDeProdutos: TFormGrupoDeProdutos;

implementation

{$R *.dfm}

{ TFormGrupoDeProdutos }

procedure TFormGrupoDeProdutos.BTN_CancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TFormGrupoDeProdutos.BTN_EditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormGrupoDeProdutos.BTN_ExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFormGrupoDeProdutos.BTN_NovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFormGrupoDeProdutos.BTN_SalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TFormGrupoDeProdutos.Cancelar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_GrupoDeProdutos.DataSet.Cancel;
  Except
    on e:Exception do
      ShowMessage('Erro ao cancelar!');
  end;
end;

procedure TFormGrupoDeProdutos.Editar;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := True;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  DBEdit_NomeGrupo.SetFocus;

  try
    DS_GrupoDeProdutos.DataSet.Edit;
  except
    on e:Exception do
      ShowMessage('Erro ao editar o registro!');
  end;
end;

procedure TFormGrupoDeProdutos.Excluir;
begin
  ShowMessage('O registro ser� exclu�do permanentemente!');

  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_GrupoDeProdutos.DataSet.Delete;
  except
    on e:Exception do
      ShowMessage('Erro ao excluir o registro!');
  end;
end;

procedure TFormGrupoDeProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormGrupoDeProdutos.FormShow(Sender: TObject);
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;
  {
  DBEdit_CodGrupo.Enabled := False;
  DBEdit_NomeGrupo.Enabled := False;
  DBEdit_DtCadGrupo.Enabled := False;    }

end;

procedure TFormGrupoDeProdutos.Novo;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;
  {
  DBEdit_CodGrupo.Enabled := True;
  DBEdit_NomeGrupo.Enabled := True;
  DBEdit_DtCadGrupo.Enabled := True;}

  try
    DS_GrupoDeProdutos.DataSet.Append;
  except
    on e:Exception do
      ShowMessage('Erro');
  end;

  DBEdit_NomeGrupo.SetFocus;
end;

procedure TFormGrupoDeProdutos.Salvar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  if DBEdit_NomeGrupo.Text = '' then
    begin
      ShowMessage('Digite o nome do grupo!');
      DBEdit_NomeGrupo.SetFocus;
      Exit;
    end;

  try
    //Grava a data atual
    DBEdit_DtCadGrupo.Text := DateToStr(Date);
    DS_GrupoDeProdutos.DataSet.Post;
  except
    on e:Exception do
      ShowMessage('Erro ao salvar o registro!');
  end;

  BTN_Novo.SetFocus;

end;

end.
