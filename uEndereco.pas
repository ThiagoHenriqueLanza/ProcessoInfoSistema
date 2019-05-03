unit uEndereco;

interface
uses REST.Json, System.Json, idHTTP, IdSSLOpenSSL;

type
   TEndereco = class
     private
        FLogradouro: string;
        FBairro: string;
        FCep: string;
        FComplemento: string;
        FLocalidade: string;
        FUf: string;
        procedure SetCep(const Value: string);
        function GetCEP(CEP:string): TJSONObject;
     public
        constructor Create();
        destructor Destroy; Override;
        Property  Cep         : string read FCep write SetCep;
        Property  Logradouro  : string read FLogradouro;
        Property  Complemento : string read FComplemento;
        Property  Bairro      : string read FBairro;
        Property  Localidade  : string read FLocalidade;
        Property  Uf          : string read FUf;
   end;

implementation

uses
  System.Classes, System.SysUtils;

{ TEndereco }

constructor TEndereco.Create();
begin
   FLogradouro := '';
   FBairro := '';
   FComplemento := '';
   FLocalidade := '';
   FUf := '';
   FCep := '';
end;

destructor TEndereco.Destroy;
begin

  inherited;
end;

function TEndereco.GetCEP(CEP: string): TJSONObject;
var
   HTTP: TIdHTTP;
   IDSSLHandler : TIdSSLIOHandlerSocketOpenSSL;
   Response: TStringStream;
begin
   Result := Nil;
   HTTP := TIdHTTP.Create;
   IDSSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create;
   Response := TStringStream.Create('');
   try
      HTTP.IOHandler := IDSSLHandler;
      HTTP.Get('https://viacep.com.br/ws/' + CEP + '/json', Response);
      if (HTTP.ResponseCode = 200) and not(Utf8ToAnsi(RawByteString(Response.DataString)) = '{'#$A'  "erro": true'#$A'}') then
         Result := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes( Utf8ToAnsi(RawByteString(Response.DataString))), 0) as TJSONObject;
   finally
      FreeAndNil(HTTP);
      FreeAndNil(IDSSLHandler);
      Response.Destroy;
   end;
end;

procedure TEndereco.SetCep(const Value: string);
Var
 objEndereco : TEndereco;
begin
  FCep := Value;

  objEndereco := TJson.JsonToObject<TEndereco>(GetCEP(FCep));

  if not Assigned(objEndereco) then
     raise Exception.Create('CEP inválido.');

  FLogradouro := objEndereco.Logradouro;
  FComplemento:= objEndereco.Complemento;
  FBairro     := objEndereco.Bairro;
  FLocalidade := objEndereco.Localidade;
  FUf         := objEndereco.Uf;
end;
end.
