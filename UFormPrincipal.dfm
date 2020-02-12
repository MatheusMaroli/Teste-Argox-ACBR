object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  ClientHeight = 165
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 19
    Width = 56
    Height = 13
    Caption = 'Porta COM:'
  end
  object lbl4: TLabel
    Left = 8
    Top = 59
    Width = 73
    Height = 13
    Caption = 'Texto Imprimir:'
  end
  object ComboBoxComPort: TComboBox
    Left = 112
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'LPT1')
  end
  object EditTexto: TEdit
    Left = 112
    Top = 56
    Width = 489
    Height = 21
    TabOrder = 1
  end
  object BtnImprimir: TButton
    Left = 8
    Top = 96
    Width = 153
    Height = 57
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BtnImprimirClick
  end
end
