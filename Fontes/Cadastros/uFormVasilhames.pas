unit uFormVasilhames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormVasilhames = class(TFormCadPadrao)
    Label1: TLabel;
    DBEdit_CodCadVasilhame: TDBEdit;
    DS_Vasilhames: TDataSource;
    Label2: TLabel;
    DBEdit_CodVasilhame: TDBEdit;
    Label3: TLabel;
    DBEdit_DescricaoVasilhame: TDBEdit;
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
  FormVasilhames: TFormVasilhames;

implementation

{$R *.dfm}

{ TFormVasilhames }

procedure TFormVasilhames.BTN_CancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TFormVasilhames.BTN_EditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormVasilhames.BTN_ExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFormVasilhames.BTN_NovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFormVasilhames.BTN_SalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TFormVasilhames.Cancelar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Vasilhames.DataSet.Cancel;
  Except
    on e:Exception do
      ShowMessage('Erro ao cancelar!');
  end;
end;

procedure TFormVasilhames.Editar;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := True;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  DBEdit_DescricaoVasilhame.SetFocus;

  try
    DS_Vasilhames.DataSet.Edit;
  except
    on e:Exception do
      ShowMessage('Erro ao editar o registro!');
  end;
end;

procedure TFormVasilhames.Excluir;
begin
  ShowMessage('O registro ser� exclu�do permanentemente!');

  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Vasilhames.DataSet.Delete;
  except
    on e:Exception do
      ShowMessage('Erro ao excluir o registro!');
  end;
end;

procedure TFormVasilhames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormVasilhames.FormShow(Sender: TObject);
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;
end;

procedure TFormVasilhames.Novo;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  try
    DS_Vasilhames.DataSet.Append;
  except
    on e:Exception do
      ShowMessage('Erro');
  end;

  DBEdit_CodVasilhame.SetFocus;
end;

procedure TFormVasilhames.Salvar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  if DBEdit_CodVasilhame.Text = '' then
    begin
      ShowMessage('Digite o c�digo do vasilhame!');
      DBEdit_CodVasilhame.SetFocus;
      Exit;
    end
  else
      if DBEdit_DescricaoVasilhame.Text = '' then
        begin
          ShowMessage('Digite a descri��o do vasilhame!');
          DBEdit_DescricaoVasilhame.SetFocus;
          Exit;
        end;

  try
    DS_Vasilhames.DataSet.Post;
  except
    on e:Exception do
      ShowMessage('Erro ao salvar o registro!');
  end;
end;

end.
