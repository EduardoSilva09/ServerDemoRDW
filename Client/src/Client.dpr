program Client;

uses
  Vcl.Forms,
  View.Principal in 'view\View.Principal.pas' {FrmClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmClient, FrmClient);
  Application.Run;
end.
