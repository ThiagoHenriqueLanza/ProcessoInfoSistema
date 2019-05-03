unit UFrmCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, uCliente;

type
  TFrmCadastroCliente = class(TForm)
    PageControl1: TPageControl;
    Cadastro: TTabSheet;
    Clientes: TTabSheet;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    FDCliente: TFDMemTable;
    DSCliente: TDataSource;
    DSEndereco: TDataSource;
    FDClienteid_cliente: TIntegerField;
    FDClientenome_cliente: TStringField;
    FDClienterg_cliente: TStringField;
    FDClientecpf_cliente: TStringField;
    FDClienteemail_cliente: TStringField;
    FDEndereco: TFDMemTable;
    FDEnderecoCEP: TStringField;
    FDEnderecologradouro: TStringField;
    FDEndereconumero: TStringField;
    FDEnderecocomplemento: TStringField;
    FDEnderecobairro: TStringField;
    FDEnderecocidade: TStringField;
    FDEnderecoestado: TStringField;
    FDEnderecopais: TStringField;
    FDEnderecoid_endereco: TIntegerField;
    FDEnderecoid_cliente: TIntegerField;
    DBGrid2: TDBGrid;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    TabSheet1: TTabSheet;
    edPorta: TEdit;
    edHost: TEdit;
    edUsuario: TEdit;
    edSenha: TEdit;
    edRemetente: TEdit;
    edNomRemetente: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    btEnviar: TButton;
    edDestinatario: TEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    FDClienteTelefone: TStringField;
    procedure FDClienteNewRecord(DataSet: TDataSet);
    procedure DBEdit6Exit(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
  private
    { Private declarations }
    function CriaXml : String;
  public
    { Public declarations }
  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

{$R *.dfm}

uses uEndereco,uEmail,uEnvioEmail, uClienteXML;

procedure TFrmCadastroCliente.btEnviarClick(Sender: TObject);
Var
   vEmail : TEmail;
begin
   vEmail := TEmail.Create;
   try
     vEmail.Porta         := StrToIntDef(edPorta.Text,0);
     vEmail.Host          := edHost.Text;
     vEmail.UsuarioEmail  := edUsuario.Text;
     vEmail.SenhaEmail    := edSenha.Text;
     vEmail.Remetente     := edRemetente.Text;
     vEmail.NomeRemetente := edNomRemetente.Text;
     vEmail.Destinatarios.Add(edDestinatario.Text);
     vEmail.Assunto       := 'Processo Seletivo';
     vEmail.TipoConteudo  := 'text/plain; charset=iso-8859-1';
     vEmail.CorpoEmail.Add('Segue em anexo Cliente Cadastrado.');
     vEmail.CaminhosAnexos.Add(CriaXml);

     TEnvioEmail.FEnviaEmail(vEmail);
   finally
     vEmail.Free;
   end;
end;

function TFrmCadastroCliente.CriaXml : String;
Var
 vXMLCliente: IXMLClienteType;
 I : Integer;
 vStringList : TStringList;
begin
   vXMLCliente := NewCliente;
   vXMLCliente.Nome       := FDClientenome_cliente.AsString;
   vXMLCliente.Identidade := FDClienterg_cliente.AsString;
   vXMLCliente.CPF        := FDClientecpf_cliente.AsString;
   vXMLCliente.Telefone   := FDClienteTelefone.AsString;
   vXMLCliente.Email      := FDClienteemail_cliente.AsString;
   FDEndereco.First;
   I := 0;
   while not FDEndereco.Eof do
   begin
      vXMLCliente.Endereco.Add;
      vXMLCliente.Endereco.Itens[I].CEP         := FDEnderecoCEP.AsString;
      vXMLCliente.Endereco.Itens[I].Logradouro  := FDEnderecologradouro.AsString;
      vXMLCliente.Endereco.Itens[I].Numero      := FDEndereconumero.AsString;
      vXMLCliente.Endereco.Itens[I].Complemento := FDEnderecocomplemento.AsString;
      vXMLCliente.Endereco.Itens[I].Bairro      := FDEnderecobairro.AsString;
      vXMLCliente.Endereco.Itens[I].Cidade      := FDEnderecocidade.AsString;
      vXMLCliente.Endereco.Itens[I].Estado      := FDEnderecoestado.AsString;
      vXMLCliente.Endereco.Itens[I].Pais        := FDEnderecopais.AsString;
      FDEndereco.Next;
      inc(I);
   end;

   vStringList:= TStringList.Create;
   try
     vStringList.Add(vXMLCliente.XML);
     vStringList.SaveToFile(ExtractFilePath(Application.ExeName)+ 'Cliente.xml');
   finally
     vStringList.Free;
   end;

   Result := ExtractFilePath(Application.ExeName)+ 'Cliente.xml';
end;

procedure TFrmCadastroCliente.DBEdit6Exit(Sender: TObject);
Var
   vEndereco : TEndereco;
begin
   if FDEnderecoCEP.AsString.Replace('-','').Length = 8 then
   begin
      vEndereco := TEndereco.Create();
      try
        vEndereco.Cep := FDEnderecoCEP.AsString;
        FDEnderecologradouro.AsString  := vEndereco.Logradouro;
        FDEnderecocomplemento.AsString := vEndereco.Complemento;
        FDEnderecobairro.AsString      := vEndereco.Bairro;
        FDEnderecocidade.AsString      := vEndereco.Localidade;
        FDEnderecoestado.AsString      := vEndereco.Uf ;
      finally
        vEndereco.Free;
      end;
   end;
end;

procedure TFrmCadastroCliente.FDClienteNewRecord(DataSet: TDataSet);
begin
  FDCliente.FieldByName('id_cliente').AsInteger := FDCliente.RecordCount + 1;
end;

end.
