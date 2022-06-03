program Server;

uses
  Vcl.Forms,
  View.Server in 'src\view\View.Server.pas' {FrmServer},
  dmPrincipal in 'src\database\dmPrincipal.pas' {dtmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServer, FrmServer);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.Run;
end.
