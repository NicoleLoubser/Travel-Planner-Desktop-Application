object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 386
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pcLoginSignup: TPageControl
    Left = 0
    Top = 0
    Width = 278
    Height = 386
    ActivePage = tsLogin
    Align = alClient
    TabOrder = 0
    object tsLogin: TTabSheet
      AlignWithMargins = True
      Caption = 'tsLogin'
      TabVisible = False
      object lblLUsername: TLabel
        Left = 19
        Top = 139
        Width = 52
        Height = 13
        Caption = 'Username:'
      end
      object lblLPassword: TLabel
        Left = 21
        Top = 200
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object edtLUsername: TEdit
        Left = 91
        Top = 136
        Width = 158
        Height = 21
        TabOrder = 0
      end
      object edtLPassword: TEdit
        Left = 95
        Top = 197
        Width = 154
        Height = 21
        TabOrder = 1
      end
      object cbLRemember: TCheckBox
        Left = 160
        Top = 224
        Width = 89
        Height = 17
        Caption = 'Remember me'
        TabOrder = 2
      end
      object pnlLToSignup: TPanel
        Left = 104
        Top = 334
        Width = 65
        Height = 25
        Caption = 'Signup'
        TabOrder = 3
      end
      object pnlLLogin: TPanel
        Left = 40
        Top = 274
        Width = 185
        Height = 41
        Caption = 'Login'
        TabOrder = 4
      end
    end
    object tsSignup: TTabSheet
      Caption = 'tsSignup'
      ImageIndex = 1
      TabVisible = False
      object lblSUsername: TLabel
        Left = 29
        Top = 35
        Width = 52
        Height = 13
        Caption = 'Username:'
      end
      object lblSPassword: TLabel
        Left = 31
        Top = 192
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object lblSEmail: TLabel
        Left = 29
        Top = 72
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object lblPhoneNo: TLabel
        Left = 31
        Top = 112
        Width = 54
        Height = 13
        Caption = 'Telephone:'
      end
      object lblSRePassword: TLabel
        Left = 31
        Top = 232
        Width = 47
        Height = 13
        Caption = 'Re-enter:'
      end
      object edtSUsername: TEdit
        Left = 101
        Top = 32
        Width = 148
        Height = 21
        TabOrder = 0
      end
      object edtSPassword: TEdit
        Left = 101
        Top = 189
        Width = 148
        Height = 21
        TabOrder = 1
      end
      object cbSRemember: TCheckBox
        Left = 160
        Top = 256
        Width = 89
        Height = 17
        Caption = 'Remember me'
        TabOrder = 2
      end
      object edtSEmail: TEdit
        Left = 101
        Top = 69
        Width = 148
        Height = 21
        TabOrder = 3
      end
      object edtSPhoneNo: TEdit
        Left = 101
        Top = 109
        Width = 148
        Height = 21
        TabOrder = 4
      end
      object edtSRePassword: TEdit
        Left = 101
        Top = 229
        Width = 148
        Height = 21
        TabOrder = 5
      end
      object pnlSSignUp: TPanel
        Left = 47
        Top = 288
        Width = 185
        Height = 41
        Caption = 'Sign up'
        TabOrder = 6
      end
      object pnlSToLogin: TPanel
        Left = 88
        Top = 335
        Width = 104
        Height = 32
        Caption = 'Back to login'
        TabOrder = 7
      end
    end
  end
end
