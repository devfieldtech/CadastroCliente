unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, Cliente.Model,
  FMX.TabControl, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.ScrollBox, FMX.Grid, FireDAC.Stan.StorageJSON,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Menus,IdHTTP,IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  FireDAC.Stan.StorageXML;

type
  TfrmPrincipal = class(TForm)
    RecPrincipal: TRectangle;
    layTop: TLayout;
    RecTop: TRectangle;
    Label1: TLabel;
    imgClose: TImage;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    tbiCad: TTabItem;
    LayPrincipal: TLayout;
    RecCad1: TRectangle;
    Layout3: TLayout;
    Layout6: TLayout;
    Label2: TLabel;
    edtNome: TEdit;
    ClearEditButton1: TClearEditButton;
    RecCad3: TRectangle;
    Layout2: TLayout;
    Layout9: TLayout;
    Rectangle4: TRectangle;
    Label7: TLabel;
    RecEndereco1: TRectangle;
    Layout10: TLayout;
    Layout11: TLayout;
    Label8: TLabel;
    edtCep: TEdit;
    ClearEditButton6: TClearEditButton;
    BtnBuscaCep: TSearchEditButton;
    RecEndereco2: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    Label9: TLabel;
    EdtLogradouro: TEdit;
    ClearEditButton7: TClearEditButton;
    RecEndereco3: TRectangle;
    Layout14: TLayout;
    Layout15: TLayout;
    lblNumero: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtNumero: TEdit;
    ClearEditButton8: TClearEditButton;
    edtComplemento: TEdit;
    ClearEditButton9: TClearEditButton;
    edtBairro: TEdit;
    ClearEditButton10: TClearEditButton;
    Rectangle2: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtCidade: TEdit;
    ClearEditButton11: TClearEditButton;
    edtEstado: TEdit;
    ClearEditButton13: TClearEditButton;
    edtPais: TEdit;
    ClearEditButton12: TClearEditButton;
    RecCad4: TRectangle;
    Layout4: TLayout;
    Layout8: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    edtTelefone: TEdit;
    ClearEditButton4: TClearEditButton;
    edtEmail: TEdit;
    ClearEditButton5: TClearEditButton;
    RecCad5: TRectangle;
    Layout5: TLayout;
    Layout7: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    edtRG: TEdit;
    ClearEditButton2: TClearEditButton;
    edtCPF: TEdit;
    ClearEditButton3: TClearEditButton;
    RecCad2: TRectangle;
    Layout1: TLayout;
    btnConfirmar: TRectangle;
    Image1: TImage;
    Label15: TLabel;
    Layout18: TLayout;
    Layout19: TLayout;
    Rectangle1: TRectangle;
    Layout20: TLayout;
    Layout21: TLayout;
    Label16: TLabel;
    edtNomeF: TEdit;
    ClearEditButton14: TClearEditButton;
    Label17: TLabel;
    edtCPF_F: TEdit;
    ClearEditButton15: TClearEditButton;
    btnBuscar: TRectangle;
    Image2: TImage;
    Label18: TLabel;
    gridClientes: TStringGrid;
    Rectangle3: TRectangle;
    Layout22: TLayout;
    btnNovo: TRectangle;
    Image3: TImage;
    Label19: TLabel;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    PMnu: TPopupMenu;
    Excluir: TMenuItem;
    StringColNome: TStringColumn;
    StringColIdentidade: TStringColumn;
    StringColCPF: TStringColumn;
    StringColTelefone: TStringColumn;
    StringColEmail: TStringColumn;
    StringColCEP: TStringColumn;
    StringColLogradouro: TStringColumn;
    StringColNumero: TStringColumn;
    StringColComplemento: TStringColumn;
    StringColBairro: TStringColumn;
    StringColCidade: TStringColumn;
    StringColEstado: TStringColumn;
    chkSemNumero: TCheckBox;
    Editar: TMenuItem;
    Email: TMenuItem;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    procedure btnConfirmarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure imgCloseClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtCPFTyping(Sender: TObject);
    procedure edtNomeKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure gridClientesCellClick(const Column: TColumn; const Row: Integer);
    procedure edtCPF_FTyping(Sender: TObject);
    procedure edtCPF_FKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnBuscarClick(Sender: TObject);
    procedure BtnBuscaCepClick(Sender: TObject);
    procedure ClearEditButton6Click(Sender: TObject);
    procedure chkSemNumeroChange(Sender: TObject);
    procedure edtCepTyping(Sender: TObject);
    procedure edtTelefoneTyping(Sender: TObject);
    procedure edtCepKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EditarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

  public
    vCpf,vEmail      :string;
    vPathDados:string;
    vTipo     :Integer;
    Cliente :TCliente;
    procedure GeraLista(vFiltro:string);
    procedure LimpaEdits;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
{$R *.fmx}

uses uFormat;
procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
var
 vFiltro:string;
begin
 if edtNomeF.Text.Length>0 then
 begin
   vFiltro:='Nome like '+QuotedStr('%'+edtNomeF.Text+'%')
 end;
 if edtCPF_F.Text.Length>0 then
 begin
  if vFiltro.Length=0 then
   vFiltro:='CPF='+edtCPF_F.Text.QuotedString
  else
   vFiltro:=vFiltro+' and cpf='+edtCPF_F.Text.QuotedString;
 end;
 GeraLista(vFiltro)
end;

procedure TfrmPrincipal.btnConfirmarClick(Sender: TObject);
begin
  Cliente.Nome        :=  edtNome.Text;
  Cliente.CPF         :=  edtCpf.Text;
  Cliente.EMAIL       :=  edtEmail.Text;
  Cliente.RG          :=  edtRG.Text;
  Cliente.Telefone    :=  edtTelefone.Text;
  Cliente.CEP         :=  edtCEP.Text;
  Cliente.Logradouro  :=  EdtLogradouro.Text;
  Cliente.Numero      :=  edtNumero.Text;
  Cliente.Complemento :=  edtComplemento.Text;
  Cliente.Bairro      :=  edtBairro.Text;
  Cliente.Localidade  :=  edtCidade.Text;
  Cliente.uf          :=  edtEstado.Text;
  Cliente.Pais        :=  edtPais.Text;
  if(gridClientes.RowCount>0) and (vTipo=1)then
   if Cliente.VerificaCpfCadastrado(Cliente.CPF)then
   begin
     ShowMessage('CPF Já Cadastrado!');
     Exit;
   end;
  Cliente.SalvaCadastroMemoria(vTipo,vPathDados);
  ShowMessage('Dados Criados com sucesso!');
  GeraLista('');
  tbPrincipal.ActiveTab := tbiLista;
end;

procedure TfrmPrincipal.btnConfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(Sender).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnConfirmarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(Sender).Opacity :=1;
end;

procedure TfrmPrincipal.btnNovoClick(Sender: TObject);
begin
 vTipo :=1;
 tbPrincipal.ActiveTab := tbiCad;
end;

procedure TfrmPrincipal.chkSemNumeroChange(Sender: TObject);
begin
 if chkSemNumero.IsChecked then
 begin
   edtNumero.Text     :='0';
   edtNumero.Enabled  := false;
 end
 else
 begin
   edtNumero.Text     :='';
   edtNumero.Enabled  := true;
 end;
end;

procedure TfrmPrincipal.ClearEditButton6Click(Sender: TObject);
begin
 edtLogradouro.Text := '';
 edtNumero.Text     := '';
 edtBairro.Text     := '';
 edtCidade.Text     := '';
 edtEstado.Text     := '';
 edtComplemento.Text:= '';
 edtLogradouro.Enabled := true;
 EdtLogradouro.Enabled := true;
 edtNumero.Enabled     := true;
 edtBairro.Enabled     := true;
 edtCidade.Enabled     := true;
 edtEstado.Enabled     := true;
end;

procedure TfrmPrincipal.EditarClick(Sender: TObject);
begin
 vTipo :=2;
 Cliente.FiltraCPF(vCpf);
 edtNome.Text           :=Cliente.Nome;
 edtCep.Text            :=Cliente.CEP;
 EdtLogradouro.Text     :=Cliente.Logradouro;
 edtNumero.Text         :=Cliente.Numero;
 edtComplemento.Text    :=Cliente.Complemento;
 edtBairro.Text         :=Cliente.Bairro;
 edtCidade.Text         :=Cliente.Localidade;
 edtEstado.Text         :=Cliente.UF;
 edtPais.Text           :=Cliente.Pais;
 edtTelefone.Text       :=Cliente.Telefone;
 edtEmail.Text          :=Cliente.Email;
 edtRG.Text             :=Cliente.RG;
 edtCPF.Text            :=Cliente.CPF;
 chkSemNumero.IsChecked := Cliente.Numero='0';
 tbPrincipal.ActiveTab  := tbiCad;
end;

procedure TfrmPrincipal.edtCepKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  BtnBuscaCepClick(Sender);
end;

procedure TfrmPrincipal.edtCepTyping(Sender: TObject);
begin
  Formatar(edtCep,TFormato.CEP);
end;

procedure TfrmPrincipal.edtCPFTyping(Sender: TObject);
begin
 Formatar(edtCPF,TFormato.CPF);
end;

procedure TfrmPrincipal.edtCPF_FKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13  then
  btnBuscarClick(sender);
end;

procedure TfrmPrincipal.edtCPF_FTyping(Sender: TObject);
begin
  Formatar(edtCPF_F,TFormato.CPF);
end;

procedure TfrmPrincipal.edtNomeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   if (key=13) or (key=9) then
   begin
     TThread.CreateAnonymousThread(
     procedure
     begin
      TThread.Synchronize( nil,
      procedure
      begin
        edtRG.SetFocus;
      end);
     end).Start;
   end;
end;

procedure TfrmPrincipal.edtTelefoneTyping(Sender: TObject);
begin
 Formatar(edtTelefone,TFormato.Celular);
end;

procedure TfrmPrincipal.ExcluirClick(Sender: TObject);
begin
 MessageDlg('Deseja Realmente Deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       Cliente := TCliente.Create;
       Cliente.DeletaCpfCadastrado(vCpf);
       Cliente.Free;
       GeraLista('');
     end;
     mrNo:
    end;
   end);
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 vPathDados := ExtractFilePath(ParamStr(0))+'data.Json';
 Cliente := TCliente.Create;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
 Cliente.vMemCliente.SaveToFile(vPathDados);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 GeraLista('');
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;
end;

procedure TfrmPrincipal.GeraLista(vFiltro:string);
var
 I:integer;
begin
 gridClientes.RowCount :=0;
 if Cliente.vMemCliente.RecordCount>0 then
 begin
   if vFiltro.Length>0 then
   begin
    Cliente.vMemCliente.Filtered := false;
    Cliente.vMemCliente.Filter   := vFiltro;
    Cliente.vMemCliente.Filtered := true;
   end
   else
   begin
    Cliente.vMemCliente.Filtered := false;
    Cliente.vMemCliente.Open;
   end;
   I :=0;
   Cliente.vMemCliente.First;
   gridClientes.RowCount   := Cliente.vMemCliente.RecordCount;
   while not Cliente.vMemCliente.Eof do
   begin
     gridClientes.cells[0,i]  := Cliente.vMemCliente.FieldByName('Nome').AsString;
     gridClientes.cells[1,i]  := Cliente.vMemCliente.FieldByName('RG').AsString;
     gridClientes.cells[2,i]  := Cliente.vMemCliente.FieldByName('CPF').AsString;
     gridClientes.cells[3,i]  := Cliente.vMemCliente.FieldByName('Telefone').AsString;
     gridClientes.cells[4,i]  := Cliente.vMemCliente.FieldByName('Email').AsString;
     gridClientes.cells[5,i]  := Cliente.vMemCliente.FieldByName('CEP').AsString;
     gridClientes.cells[6,i]  := Cliente.vMemCliente.FieldByName('Logradouro').AsString;
     gridClientes.cells[7,i]  := Cliente.vMemCliente.FieldByName('Numero').AsString;
     gridClientes.cells[8,i]  := Cliente.vMemCliente.FieldByName('Complemento').AsString;
     gridClientes.cells[9,i]  := Cliente.vMemCliente.FieldByName('Bairro').AsString;
     gridClientes.cells[10,i]  := Cliente.vMemCliente.FieldByName('Cidade').AsString;
     gridClientes.cells[11,i] := Cliente.vMemCliente.FieldByName('Estado').AsString;
     inc(i);
     Cliente.vMemCliente.Next;
   end;
 end;
end;

procedure TfrmPrincipal.gridClientesCellClick(const Column: TColumn;
  const Row: Integer);
begin
 vCpf   := gridClientes.Cells[2,gridClientes.Row];
 vEmail := gridClientes.Cells[4,gridClientes.Row];
end;

procedure TfrmPrincipal.imgCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.LimpaEdits;
begin
 edtNome.Text         :='';
 edtCep.Text          :='';
 EdtLogradouro.Text   :='';
 edtNumero.Text       :='';
 edtComplemento.Text  :='';
 edtBairro.Text       :='';
 edtCidade.Text       :='';
 edtEstado.Text       :='';
 edtPais.Text         :='';
 edtTelefone.Text     :='';
 edtEmail.Text        :='';
 edtRG.Text           :='';
 edtCPF.Text          :='';
end;

procedure TfrmPrincipal.BtnBuscaCepClick(Sender: TObject);
begin
 Cliente.CEP        := edtCep.Text;
 case Cliente.ConsultaCEP of
  1:begin
     edtCep.Text        := Cliente.CEP;
     EdtLogradouro.Text := Cliente.Logradouro;
     edtComplemento.Text:= Cliente.Complemento;
     edtNumero.Text     := Cliente.Numero;
     edtBairro.Text     := Cliente.Bairro;
     edtCidade.Text     := Cliente.Localidade;
     edtEstado.Text     := Cliente.UF;
    end;
  2:begin
     ShowMessage('CEP Não Encontrado!');
     edtCep.Text        := '';
     EdtLogradouro.Text := '';
     edtNumero.Text     := '';
     edtBairro.Text     := '';
     edtCidade.Text     := '';
     edtEstado.Text     := '';
     edtComplemento.Text:= '';
    end;
  3:begin
     ShowMessage('Erro ao conectar ao servidor de CEP');
     edtCep.Text        := '';
     EdtLogradouro.Text := '';
     edtNumero.Text     := '';
     edtBairro.Text     := '';
     edtCidade.Text     := '';
     edtEstado.Text     := '';
     edtComplemento.Text:= '';
   end;
 end;
 EdtLogradouro.Enabled := EdtLogradouro.Text.Length=0;
 EdtLogradouro.Enabled := EdtLogradouro.Text.Length=0;
 edtNumero.Enabled     := edtNumero.Text.Length=0;
 edtBairro.Enabled     := edtBairro.Text.Length=0;
 edtCidade.Enabled     := edtCidade.Text.Length=0;
 edtEstado.Enabled     := edtEstado.Text.Length=0;
end;

end.

