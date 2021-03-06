unit uFuncoes;

interface
  function RemoveAcento(Str: String): String;
 // function VerificaCNPJ(CNPJ: String): boolean;

implementation

uses SysUtils;

function RemoveAcento(Str: String): String;
const
  ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: Integer;
begin
  for x := 1 to Length(Str) do
    if Pos(Str[x],ComAcento) <> 0 then
      Str[x] := SemAcento[Pos(Str[x], ComAcento)];
    Result := Str;
end;
 {
function VerificaCNPJ(CNPJ: String): boolean;
{Fun��o retirada de https://www.devmedia.com.br/validando-o-cnpj-em-uma-aplicacao-delphi/22372
Autor: Prof. Omero Francisco Bertol} {
var                              {
  Dig13, Dig14 : String;
  sm, i, r, peso : Integer;
begin
  //length retorna o tamanho da string do CNPJ
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14)) then
      begin
        VerificaCNPJ := False;
        Exit;
      end;

  try
    //C�lculo do 1� digito verificador
    sm := 0;
    peso := 2;

    for i := 12 downto 1 do
      begin
        sm := sm + (StrToInt(CNPJ[i] * peso);
        peso := peso + 1
        if (peso = 10) then
          peso := 2;
      end;

    r := sm mod 11;
    if ((r = 0) or (r = 1) then
      Dig13 := 0;
    else
      Str((11-r):1, Dig13);//Converte um n�mero no respectivo caractere num�rico

    //C�lculo do 2� digito verificador
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
      begin
        sm := sm + (StrToInt(CNPJ[i] * peso));
        peso := peso + 1;
        if (peso = 10) then
          peso := 2;
      end;








  finally

  end;
         }


end.
