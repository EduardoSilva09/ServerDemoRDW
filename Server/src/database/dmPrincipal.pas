unit dmPrincipal;

interface

uses
  System.SysUtils, System.Classes, uDWDataModule, uDWAbout, uRESTDWServerEvents,
  uDWJSONObject, uDWConsts, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Authenticator.Basic;

type
  TdtmPrincipal = class(TServerMethodDataModule)
    DWServerEvents: TDWServerEvents;
    procedure DWServerEventsEventsusuarioReplyEventByType(var Params: TDWParams;
      var Result: string; const RequestType: TRequestType;
      var StatusCode: Integer; RequestHeader: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

uses
  System.JSON;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmPrincipal.DWServerEventsEventsusuarioReplyEventByType
  (var Params: TDWParams; var Result: string; const RequestType: TRequestType;
  var StatusCode: Integer; RequestHeader: TStringList);
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  HTTPBasicAuthenticator: THTTPBasicAuthenticator;
begin
  RESTClient:= TRESTClient.Create(nil);
  RESTRequest:= TRESTRequest.Create(nil);
  RESTResponse:= TRESTResponse.Create(nil);
  HTTPBasicAuthenticator := THTTPBasicAuthenticator.Create(nil);
  HTTPBasicAuthenticator.Username := 'test';
  HTTPBasicAuthenticator.Password := 'test';

  RESTClient.Authenticator := HTTPBasicAuthenticator;
  RESTClient.BaseURL := 'http://localhost:8082';
  RESTRequest.Client := RESTClient;
  RESTRequest.Response := RESTResponse;

  RESTRequest.Resource := 'usuario';

  RESTRequest.Execute;
  Result := RESTResponse.Content;
end;

end.
