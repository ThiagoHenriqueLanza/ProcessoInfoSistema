object FrmCadastroCliente: TFrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 623
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 745
    Height = 623
    ActivePage = TabSheet1
    TabOrder = 0
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitWidth = 793
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 360
        Height = 33
        DataSource = DSCliente
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 38
        Width = 720
        Height = 131
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 11
          Top = 24
          Width = 38
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 63
          Top = 24
          Width = 32
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 138
          Top = 70
          Width = 20
          Height = 13
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 11
          Top = 70
          Width = 16
          Height = 13
          Caption = 'RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 266
          Top = 70
          Width = 35
          Height = 13
          Caption = 'E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 498
          Top = 70
          Width = 49
          Height = 13
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 11
          Top = 43
          Width = 48
          Height = 21
          DataField = 'id_cliente'
          DataSource = DSCliente
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 63
          Top = 43
          Width = 618
          Height = 21
          DataField = 'nome_cliente'
          DataSource = DSCliente
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 11
          Top = 86
          Width = 121
          Height = 21
          DataField = 'rg_cliente'
          DataSource = DSCliente
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 138
          Top = 86
          Width = 121
          Height = 21
          DataField = 'cpf_cliente'
          DataSource = DSCliente
          MaxLength = 14
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 266
          Top = 86
          Width = 223
          Height = 21
          DataField = 'email_cliente'
          DataSource = DSCliente
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 498
          Top = 86
          Width = 121
          Height = 21
          DataField = 'Telefone'
          DataSource = DSCliente
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 209
        Width = 720
        Height = 368
        Caption = 'Endere'#231'o'
        TabOrder = 3
        object Label6: TLabel
          Left = 14
          Top = 14
          Width = 20
          Height = 13
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 84
          Top = 14
          Width = 65
          Height = 13
          Caption = 'Logradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 645
          Top = 14
          Width = 44
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 14
          Top = 56
          Width = 79
          Height = 13
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 14
          Top = 96
          Width = 34
          Height = 13
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 141
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 268
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 395
          Top = 96
          Width = 23
          Height = 13
          Caption = 'Pa'#237's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 145
          Width = 714
          Height = 216
          DataSource = DSEndereco
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'logradouro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'complemento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bairro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'estado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pais'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_endereco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_cliente'
              Visible = True
            end>
        end
        object DBEdit7: TDBEdit
          Left = 84
          Top = 33
          Width = 550
          Height = 21
          DataField = 'logradouro'
          DataSource = DSEndereco
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 645
          Top = 33
          Width = 54
          Height = 21
          DataField = 'numero'
          DataSource = DSEndereco
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 14
          Top = 72
          Width = 547
          Height = 21
          DataField = 'complemento'
          DataSource = DSEndereco
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 14
          Top = 112
          Width = 121
          Height = 21
          DataField = 'bairro'
          DataSource = DSEndereco
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 268
          Top = 112
          Width = 121
          Height = 21
          DataField = 'estado'
          DataSource = DSEndereco
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 395
          Top = 112
          Width = 121
          Height = 21
          DataField = 'pais'
          DataSource = DSEndereco
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 141
          Top = 112
          Width = 121
          Height = 21
          DataField = 'cidade'
          DataSource = DSEndereco
          TabOrder = 4
        end
      end
      object DBNavigator2: TDBNavigator
        Left = 6
        Top = 182
        Width = 324
        Height = 21
        DataSource = DSEndereco
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 17
        Top = 242
        Width = 62
        Height = 21
        Hint = 'Informe o CEP para preencherer os dados.'
        DataField = 'CEP'
        DataSource = DSEndereco
        MaxLength = 9
        TabOrder = 0
        OnExit = DBEdit6Exit
      end
    end
    object Clientes: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 1
      ExplicitWidth = 793
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 737
        Height = 595
        Align = alClient
        DataSource = DSCliente
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg_cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf_cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email_cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone'
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Configurar E-mail'
      ImageIndex = 2
      ExplicitLeft = 8
      ExplicitTop = 18
      object Label14: TLabel
        Left = 5
        Top = 6
        Width = 31
        Height = 14
        Caption = 'Porta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 136
        Top = 6
        Width = 26
        Height = 13
        Caption = 'Host'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 5
        Top = 46
        Width = 81
        Height = 13
        Caption = 'Usuario E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 197
        Top = 46
        Width = 73
        Height = 13
        Caption = 'Senha E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 5
        Top = 84
        Width = 64
        Height = 13
        Caption = 'Remetente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 197
        Top = 84
        Width = 99
        Height = 13
        Caption = 'Nome Remetente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 5
        Top = 122
        Width = 70
        Height = 13
        Caption = 'Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edPorta: TEdit
        Left = 5
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'smtp.live.com'
      end
      object edHost: TEdit
        Left = 136
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '465'
      end
      object edUsuario: TEdit
        Left = 5
        Top = 61
        Width = 180
        Height = 21
        TabOrder = 2
        Text = 'thiagohlanza@hotmail.com'
      end
      object edSenha: TEdit
        Left = 197
        Top = 61
        Width = 180
        Height = 21
        PasswordChar = '*'
        TabOrder = 3
        Text = 'cruzeiro2019'
      end
      object edRemetente: TEdit
        Left = 5
        Top = 100
        Width = 182
        Height = 21
        TabOrder = 4
        Text = 'thiagohlanza@hotmail.com'
      end
      object edNomRemetente: TEdit
        Left = 197
        Top = 100
        Width = 180
        Height = 21
        TabOrder = 5
        Text = 'Thiago Lanza'
      end
      object btEnviar: TButton
        Left = 5
        Top = 167
        Width = 75
        Height = 25
        Caption = 'Enviar E-mail'
        TabOrder = 6
        OnClick = btEnviarClick
      end
      object edDestinatario: TEdit
        Left = 5
        Top = 137
        Width = 182
        Height = 21
        TabOrder = 7
        Text = 'thiagohlanza@hotmail.com'
      end
    end
  end
  object FDCliente: TFDMemTable
    Active = True
    OnNewRecord = FDClienteNewRecord
    FieldDefs = <
      item
        Name = 'id_cliente'
        DataType = ftInteger
      end
      item
        Name = 'nome_cliente'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'rg_cliente'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'cpf_cliente'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'email_cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'id_cliente'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 456
    object FDClienteid_cliente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_cliente'
    end
    object FDClientenome_cliente: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'nome_cliente'
      Size = 150
    end
    object FDClienterg_cliente: TStringField
      DisplayLabel = 'RG'
      DisplayWidth = 15
      FieldName = 'rg_cliente'
      Size = 10
    end
    object FDClientecpf_cliente: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'cpf_cliente'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object FDClienteemail_cliente: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 30
      FieldName = 'email_cliente'
      Size = 60
    end
    object FDClienteTelefone: TStringField
      FieldName = 'Telefone'
    end
  end
  object DSCliente: TDataSource
    DataSet = FDCliente
    Left = 508
  end
  object DSEndereco: TDataSource
    DataSet = FDEndereco
    Left = 448
    Top = 200
  end
  object FDEndereco: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'logradouro'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'complemento'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'pais'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'id_endereco'
        DataType = ftInteger
      end
      item
        Name = 'id_cliente'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'id_cliente;id_endereco'
    MasterSource = DSCliente
    MasterFields = 'id_cliente'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 386
    Top = 200
    object FDEnderecoCEP: TStringField
      DisplayWidth = 9
      FieldName = 'CEP'
      EditMask = '00000\-000;0;_'
      Size = 8
    end
    object FDEnderecologradouro: TStringField
      DisplayLabel = 'Logradouro'
      DisplayWidth = 50
      FieldName = 'logradouro'
      Size = 150
    end
    object FDEndereconumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 4
      FieldName = 'numero'
      Size = 10
    end
    object FDEnderecocomplemento: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 60
      FieldName = 'complemento'
      Size = 150
    end
    object FDEnderecobairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'bairro'
      Size = 150
    end
    object FDEnderecocidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'cidade'
      Size = 150
    end
    object FDEnderecoestado: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 20
      FieldName = 'estado'
      Size = 150
    end
    object FDEnderecopais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'pais'
      Size = 150
    end
    object FDEnderecoid_endereco: TIntegerField
      FieldName = 'id_endereco'
      Visible = False
    end
    object FDEnderecoid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
  end
end
