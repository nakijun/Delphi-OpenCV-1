object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'OpenCV - Component demo'
  ClientHeight = 499
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 308
    Top = 8
    Width = 79
    Height = 13
    Caption = 'Image operation'
  end
  object cbb1: TComboBox
    Left = 308
    Top = 24
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = cbb1Change
    Items.Strings = (
      'None'
      'Convert to grayscale'
      'Canny'
      'Smooth'
      'Erode'
      'Dilate'
      'Laplace'
      'Sobel'
      'Threshold')
  end
  object chk1: TCheckBox
    Left = 308
    Top = 60
    Width = 97
    Height = 17
    Caption = 'Camera enabled'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = chk1Click
  end
  object ocvw1: TocvView
    Left = 8
    Top = 8
    Width = 285
    Height = 229
    VideoSource = ocvcmr1
  end
  object ocvw2: TocvView
    Left = 8
    Top = 255
    Width = 285
    Height = 229
    VideoSource = ocvmgprtn1
  end
  object ocvcmr1: TocvCamera
    Resolution = r640x360
    Left = 328
    Top = 104
  end
  object ocvmgprtn1: TocvImageOperation
    VideoSource = ocvcmr1
    OperationClassName = 'TocvContoursOperation'
    Operation.OperationClassName = 'TocvAdaptiveThresholdOperation'
    Operation.Preprocessing.MaxValue = 255.000000000000000000
    Operation.Preprocessing.BlockSize = 21
    Operation.Preprocessing.Param = 7.000000000000000000
    Operation.Offset.X = 0
    Operation.Offset.Y = 0
    Operation.ContourDraw.DrawContours = True
    Operation.ContourDraw.Offset.X = 0
    Operation.ContourDraw.Offset.Y = 0
    Operations = <>
    Left = 328
    Top = 164
  end
end
