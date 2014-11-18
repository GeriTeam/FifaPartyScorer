object fmGamePlay: TfmGamePlay
  Left = 0
  Top = 0
  Caption = 'fmGamePlay'
  ClientHeight = 92
  ClientWidth = 413
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
    Top = 8
    Width = 44
    Height = 13
    Caption = #1044#1086#1084#1072#1082#1080#1085
  end
  object lbl2: TLabel
    Left = 256
    Top = 8
    Width = 23
    Height = 13
    Caption = #1043#1086#1089#1090
  end
  object lbl3: TLabel
    Left = 195
    Top = 21
    Width = 16
    Height = 20
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dblkcbb1: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object dblkcbb2: TDBLookupComboBox
    Left = 256
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object JvValidateEdit1: TJvValidateEdit
    Left = 159
    Top = 24
    Width = 33
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    TabOrder = 2
  end
  object JvValidateEdit2: TJvValidateEdit
    Left = 217
    Top = 24
    Width = 33
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    TabOrder = 3
  end
  object btn1: TButton
    Left = 326
    Top = 59
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 4
  end
  object btn2: TButton
    Left = 238
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 5
  end
end
