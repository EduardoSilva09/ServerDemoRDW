unit View.Server;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDWAbout, uRESTDWBase;

type
  TFrmServer = class(TForm)
    btnIniciarServidor: TButton;
    btnPararServidor: TButton;
    btnLimparLogsMemo: TButton;
    memoLogs: TMemo;
    RESTServicePooler: TRESTServicePooler;
    procedure btnIniciarServidorClick(Sender: TObject);
    procedure btnPararServidorClick(Sender: TObject);
    procedure btnLimparLogsMemoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function formatDateISO8601(const ADate: TDateTime): string;
  public
    { Public declarations }
  end;

var
  FrmServer: TFrmServer;

implementation

uses
  dmPrincipal;

{$R *.dfm}

procedure TFrmServer.btnIniciarServidorClick(Sender: TObject);
var
  FMensagemIniciarServer: string;
  FHorarioInicioServer: string;
  FPortaServer: Integer;
const
  vOnServerStart = ' Servidor rodando... ' + sLineBreak + '  - Porta : %d ' +
    sLineBreak + '  - Horário : %s ' + sLineBreak;
begin
  RESTServicePooler.Active := True;
  FPortaServer := RESTServicePooler.ServicePort;
  FHorarioInicioServer := formatDateISO8601(Now);
  FMensagemIniciarServer := format(vOnServerStart, [FPortaServer, FHorarioInicioServer]);
  memoLogs.lines.Add(FMensagemIniciarServer);
end;

procedure TFrmServer.btnLimparLogsMemoClick(Sender: TObject);
begin
  memoLogs.Lines.Clear;
end;

procedure TFrmServer.btnPararServidorClick(Sender: TObject);
var
  FHorarioParadaServer: string;
  FMensagemServerParado: string;
const
  vOnServerStopLog = ' Servidor Parado... ' + sLineBreak + '  - Horário: %s' +
    sLineBreak;
begin
  RESTServicePooler.Active := false;
  FHorarioParadaServer := formatDateISO8601(Now);
  FMensagemServerParado := format(vOnServerStopLog, [FHorarioParadaServer]);
  memoLogs.Lines.Add(FMensagemServerParado);
end;

function TFrmServer.formatDateISO8601(const ADate: TDateTime): string;
begin
  Result := FormatDateTime('yyyy-mm-dd hh:mm:ss', ADate);
end;

procedure TFrmServer.FormCreate(Sender: TObject);
begin
  RESTServicePooler.ServerMethodClass := TdtmPrincipal;
end;

end.
