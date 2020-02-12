unit UFormPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CPort, StdCtrls, ACBrETQ, ACBrDevice;

type
  TFormPrincipal = class(TForm)
    ComboBoxComPort: TComboBox;
    EditTexto: TEdit;
    lbl1: TLabel;
    lbl4: TLabel;
    BtnImprimir: TButton;
    procedure BtnImprimirClick(Sender: TObject);
  private
    function IniciarArgox() : TACBrETQ;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}





procedure TFormPrincipal.BtnImprimirClick(Sender: TObject);
var ACBrETQ : TACBrETQ;
begin
  try
    ACBrETQ := IniciarArgox();
    ACBrETQ.ImprimirTexto(orNormal, 2, 5, 2, 120, 050, EditTexto.Text);
    ACBrETQ.Imprimir(1,600);
    ACBrETQ.Desativar;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;



function TFormPrincipal.IniciarArgox: TACBrETQ;
begin
  try
    Result := TACBrETQ.Create(nil);
    Result.Modelo := etqPpla;
    Result.Porta  := ComboBoxComPort.Text;
    Result.LimparMemoria := True;
    Result.Ativar;
    Result.Avanco := 0;

  except on E: Exception do
    begin
      Result := nil;
      raise Exception.Create(E.Message);
    end;
  end;
end;

end.
