object fmPages: TfmPages
  Left = 416
  Top = 373
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  ClientHeight = 461
  ClientWidth = 684
  Color = clBtnFace
  Constraints.MinHeight = 499
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    684
    461)
  PixelsPerInch = 96
  TextHeight = 13
  object btnDefaults: TTntButton
    Left = 8
    Top = 429
    Width = 81
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Defaults'
    TabOrder = 0
    OnClick = btnDefaultsClick
  end
  object btnOK: TTntButton
    Left = 444
    Top = 429
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TTntButton
    Left = 524
    Top = 429
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnApply: TTntButton
    Left = 604
    Top = 429
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Apply'
    Enabled = False
    TabOrder = 3
    OnClick = btnApplyClick
  end
  object lbPages: TTntListBox
    Left = 8
    Top = 8
    Width = 145
    Height = 406
    Style = lbOwnerDrawFixed
    Anchors = [akLeft, akTop, akBottom]
    ItemHeight = 18
    TabOrder = 4
    OnClick = lbPagesClick
  end
  object pnlPage: TTntPanel
    Left = 160
    Top = 8
    Width = 518
    Height = 406
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'pnlPage'
    TabOrder = 5
  end
end
