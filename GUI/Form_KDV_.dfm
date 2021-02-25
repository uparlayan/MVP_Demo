object Form_KDV: TForm_KDV
  Left = 0
  Top = 0
  Caption = 'KDV Hesap Makinesi'
  ClientHeight = 189
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    423
    189)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 18
    Width = 34
    Height = 13
    Caption = 'Matrah'
  end
  object Label2: TLabel
    Left = 20
    Top = 52
    Width = 48
    Height = 13
    Caption = 'KDV Oran'#305
  end
  object lb_Sonuc: TLabel
    Left = 88
    Top = 114
    Width = 237
    Height = 51
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object ed_Matrah: TEdit
    Left = 88
    Top = 15
    Width = 237
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 0
    Text = '10000'
    ExplicitWidth = 199
  end
  object ed_KDVOran: TEdit
    Left = 88
    Top = 49
    Width = 237
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 1
    Text = '18'
    ExplicitWidth = 199
  end
  object BT_Hesapla: TButton
    Left = 331
    Top = 13
    Width = 75
    Height = 57
    Anchors = [akTop, akRight]
    Caption = 'Hesapla'
    TabOrder = 2
    OnClick = BT_HesaplaClick
    ExplicitLeft = 293
  end
  object cb_Brut: TCheckBox
    Left = 88
    Top = 84
    Width = 237
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Br'#252't '#220'zerinden Hesapla'
    TabOrder = 3
  end
end
