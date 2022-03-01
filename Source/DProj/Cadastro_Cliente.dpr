program Cadastro_Cliente;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in '..\Principal\View\UPrincipal.pas' {frmPrincipal},
  Cliente.Model in '..\Principal\Class\Cliente.Model.pas',
  uFormat in '..\Principal\Class\uFormat.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
