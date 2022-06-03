object FrmServer: TFrmServer
  Left = 0
  Top = 0
  Caption = 'Server'
  ClientHeight = 358
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnIniciarServidor: TButton
    Left = 16
    Top = 24
    Width = 89
    Height = 41
    Caption = 'Start'
    TabOrder = 0
    OnClick = btnIniciarServidorClick
  end
  object btnPararServidor: TButton
    Left = 16
    Top = 71
    Width = 89
    Height = 42
    Caption = 'Stop'
    TabOrder = 1
    OnClick = btnPararServidorClick
  end
  object btnLimparLogsMemo: TButton
    Left = 16
    Top = 119
    Width = 89
    Height = 42
    Caption = 'Clear'
    TabOrder = 2
    OnClick = btnLimparLogsMemoClick
  end
  object memoLogs: TMemo
    Left = 111
    Top = 24
    Width = 329
    Height = 321
    TabOrder = 3
  end
  object RESTServicePooler: TRESTServicePooler
    Active = False
    CORS = False
    CORS_CustomHeaders.Strings = (
      'Access-Control-Allow-Origin=*'
      
        'Access-Control-Allow-Methods=GET, POST, PATCH, PUT, DELETE, OPTI' +
        'ONS'
      
        'Access-Control-Allow-Headers=Content-Type, Origin, Accept, Autho' +
        'rization, X-CUSTOM-HEADER')
    PathTraversalRaiseError = True
    RequestTimeout = -1
    ServicePort = 8083
    ProxyOptions.Port = 8888
    AuthenticationOptions.AuthorizationOption = rdwAOBasic
    AuthenticationOptions.OptionParams.AuthDialog = True
    AuthenticationOptions.OptionParams.CustomDialogAuthMessage = 'Protected Space...'
    AuthenticationOptions.OptionParams.Custom404TitleMessage = '(404) The address you are looking for does not exist'
    AuthenticationOptions.OptionParams.Custom404BodyMessage = '404'
    AuthenticationOptions.OptionParams.Custom404FooterMessage = 'Take me back to <a href="./">Home REST Dataware'
    AuthenticationOptions.OptionParams.Username = 'testserver'
    AuthenticationOptions.OptionParams.Password = 'testserver'
    SSLMethod = sslvSSLv2
    SSLVersions = []
    Encoding = esUtf8
    RootPath = '/'
    SSLVerifyMode = []
    SSLVerifyDepth = 0
    SSLMode = sslmUnassigned
    ForceWelcomeAccess = False
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    Left = 224
    Top = 96
  end
end
