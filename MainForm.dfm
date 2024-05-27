object FormSpamera: TFormSpamera
  Left = 0
  Top = 0
  Caption = 'Admin WP'
  ClientHeight = 583
  ClientWidth = 734
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    000A000000160000002600000037343434656A6A6AB57C7C7CE36D6D6DFF6D6D
    6DFF7C7C7CE36A6A6AB5343434650000003700000026000000160000000A0000
    00000000000000000000888888728A8A8AEEB1B1B1BFE0E0E0CDFFFFFFEDFFFF
    FFEDE0E0E0CDB1B1B1BF8A8A8AEE888888720000000000000000000000000000
    000088888806888888B7979797D6EAEAEADBF8F8F8FFDCDCDCFF9C9C9CFF9C9C
    9CFFC2C2C2FFFFFFFFFFEAEAEADB989898D4888888B788888806000000000000
    0000888888939C9C9CCDF4F4F4F3B4B4B4FFF9F9F9FFF2F2F2FF8A8A8AFF8181
    81FFCBCBCBFFFEFEFFFFC7C7C7FFF0F0F0F39C9C9CCD88888890000000008888
    882D8A8A8AECF3F3F3D9B4B4B4FFC2C2C2FFFEFEFEFFF1F1F1FF929292FF7272
    72FFF3F3F3FFFEFDFEFFD8D8D9FF989898FFF2F2F2D88A8A8AEC8888882D8888
    8893B2B2B2BDD4D4D4FFA1A1A1FFE1E1E1FFFEFEFEFFADADADFFB3B3B3FF8484
    84FFFEFEFFFFE0E0E0FFE3E3E3FF878787FFBEBEBEFFB2B2B2BD888888908888
    88DBE3E3E3CCB1B1B1FFA6A6A6FFFDFDFDFFE8E8E8FF88888BFFD7D7D7FFC0C0
    C0FFFEFEFEFFB0B0B0FFC3C3C3FFBBBBBBFF969696FFE3E3E3CC888888D58888
    88F9F8F8F8EE9D9D9DFFC6C6C6FFFEFEFEFFC3C3C3FF939393FFCACACAFFFEFE
    FEFFFCFCFCFF959595FFAAAAAAFFECECECFF999999FFF9F9F9EE888888F38888
    88F9FCFCFCED989898FFEDEDEDFFFBFBFBFF9C9C9CFF949494FFB7B7B7FFFEFE
    FEFFDDDDDDFF88888BFF9E9D9EFFFFFFFFFFAFAFAFFFF8F8F8EE888888F08888
    88D8E3E3E3CCB8B8B8FFFFFFFFFFE2E2E2FF919191FF909090FFDCDCDCFFFFFF
    FFFFB3B3B3FF909090FFAFAEAEFFFFFFFFFFD3D2D3FFE3E3E3CC888888D58888
    8890B2B2B2BDFAFAFAFFFFFFFFFFDBDBDBFF929292FFB2B2B2FFFEFEFEFFFFFF
    FFFFAAAAAAFF8D8D8DFFE1E2E1FFFFFFFFFFF0F0F1FFB2B2B2BD8888888D8888
    882D8A8A8AEEF8F8F8D7B8B8B8FFB4B4B4FF8E8E8EFFB2B2B2FFB4B4B4FFB4B4
    B4FFA9A9A9FF898989FFFAFAFAFFFFFFFFFFF9F9F9E28A8A8AEE8888882A0000
    0000888888909B9B9BCFF0F0F0F29B9B9BFF868686FF868686FF868686FF8686
    86FF868686FF868686FFB6B6B6FFFFFFFFF69B9B9BCF8888888D000000000000
    000088888806888888B7969696D9EAEAEADBC5C5C5FF9E9E9EFF888888FF8383
    83FF9B9B9BFFCACACAFFEDEDEDDA969696D9888888B788888806000000000000
    00000000000000000000888888728A8A8AEEAFAFAFC0DEDEDECEE2E2E2EFE2E2
    E2EFDEDEDECEAFAFAFC08A8A8AEE888888720000000000000000000000000000
    0000000000000000000000000000888888278888888D888888CC888888FC8888
    88FC888888CC8888888D88888827000000000000000000000000000000000000
    0000E00700008001000080010000000000000000000000000000000000000000
    00000000000000000000000000008001000080010000E0070000F00F0000}
  Menu = MainMenu
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 728
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    Images = ILPage
    TabOrder = 0
    ExplicitHeight = 479
    object TabSheet1: TTabSheet
      Caption = #1043#1083#1072#1074#1085#1072#1103
      ExplicitHeight = 450
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 196
        Height = 451
        Align = alLeft
        Caption = #1042#1099#1073#1086#1088' '#1076#1086#1084#1077#1085#1086#1074
        TabOrder = 0
        ExplicitHeight = 420
        object CLBDomenNeddList: TCheckListBox
          AlignWithMargins = True
          Left = 5
          Top = 37
          Width = 186
          Height = 409
          Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1086#1084#1077#1085#1099', '#1089' '#1082#1086#1090#1086#1088#1099#1084#1080' '#1073#1091#1076#1077#1090' '#1087#1088#1086#1080#1089#1093#1086#1076#1080#1090#1100' '#1088#1072#1073#1086#1090#1072
          OnClickCheck = CLBDomenNeddListClickCheck
          Align = alClient
          BevelInner = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'site 1'
            'site 2'
            'site 3'
            'site 4'
            'site 5')
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 378
        end
        object CBAll: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 16
          Width = 182
          Height = 17
          Margins.Left = 5
          Margins.Top = 1
          Margins.Right = 5
          Margins.Bottom = 1
          Align = alTop
          Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077'/'#1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
          TabOrder = 1
          OnClick = CBAllClick
        end
      end
      object PageControl1: TPageControl
        Left = 196
        Top = 0
        Width = 524
        Height = 451
        ActivePage = TabSheet4
        Align = alClient
        Images = ILIcons
        TabOrder = 1
        ExplicitHeight = 420
        object TabSheet4: TTabSheet
          Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1089#1099#1083#1086#1082
          ImageIndex = 6
          ExplicitHeight = 391
          object GroupBox2: TGroupBox
            Left = 0
            Top = 289
            Width = 516
            Height = 133
            Align = alBottom
            Caption = #1044#1072#1085#1085#1099#1077' '#1072#1082#1090#1080#1074#1085#1086#1075#1086' '#1076#1086#1084#1077#1085#1072
            TabOrder = 0
            ExplicitTop = 258
            DesignSize = (
              516
              133)
            object Label8: TLabel
              Left = 8
              Top = 48
              Width = 42
              Height = 13
              Caption = #1041#1083#1086#1075' url:'
            end
            object Label9: TLabel
              Left = 8
              Top = 75
              Width = 52
              Height = 13
              Caption = #1041#1083#1086#1075' login:'
            end
            object Label10: TLabel
              Left = 8
              Top = 102
              Width = 52
              Height = 13
              Caption = #1041#1083#1086#1075' pass:'
            end
            object Label12: TLabel
              Left = 8
              Top = 21
              Width = 48
              Height = 13
              Caption = #1044#1086#1084#1077#1085#1086#1074':'
            end
            object Label13: TLabel
              Left = 143
              Top = 21
              Width = 83
              Height = 13
              Caption = #1080#1079' '#1085#1080#1093' '#1074#1099#1073#1088#1072#1085#1086':'
            end
            object EditAutoBlogURL: TEdit
              Left = 80
              Top = 48
              Width = 208
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Enabled = False
              TabOrder = 0
            end
            object EditAutoBlogLogin: TEdit
              Left = 80
              Top = 75
              Width = 208
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Enabled = False
              TabOrder = 1
            end
            object EditAutoBlogPassword: TEdit
              Left = 80
              Top = 102
              Width = 208
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Enabled = False
              TabOrder = 2
            end
            object EditDomenovKolvo: TEdit
              Left = 80
              Top = 21
              Width = 55
              Height = 21
              Enabled = False
              TabOrder = 3
              Text = '0'
            end
            object EditDomenovCheckedKolvo: TEdit
              Left = 233
              Top = 21
              Width = 55
              Height = 21
              Enabled = False
              TabOrder = 4
              Text = '0'
            end
            object ButtonStartPostDo: TButton
              Left = 345
              Top = 48
              Width = 121
              Height = 42
              Anchors = [akRight, akBottom]
              Caption = 'Start / '#1055#1091#1089#1082
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 0
              Images = ILBigIcons
              ParentFont = False
              TabOrder = 5
              OnClick = ButtonStartPostDoClick
            end
          end
          object GroupBox8: TGroupBox
            Left = 0
            Top = 105
            Width = 516
            Height = 184
            Hint = #1060#1072#1081#1083#1099' '#1083#1086#1075#1086#1074' '#1093#1088#1072#1085#1103#1090#1089#1103' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077' log '#1074#1084#1077#1089#1090#1077' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081
            Align = alClient
            Caption = #1051#1086#1075
            TabOrder = 1
            ExplicitHeight = 153
            object MemoStatusEvents: TMemo
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 506
              Height = 161
              Hint = #1051#1086#1075' '#1089#1086#1073#1099#1090#1080#1081
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
              ExplicitHeight = 130
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 516
            Height = 105
            Align = alTop
            Caption = #1044#1072#1085#1085#1099#1077' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1089#1089#1099#1083#1082#1080
            TabOrder = 2
            DesignSize = (
              516
              105)
            object Label14: TLabel
              Left = 8
              Top = 21
              Width = 49
              Height = 13
              Caption = #1048#1084#1103' link'#39#1072':'
            end
            object Label15: TLabel
              Left = 8
              Top = 48
              Width = 17
              Height = 13
              Caption = 'Url:'
            end
            object Label16: TLabel
              Left = 8
              Top = 75
              Width = 49
              Height = 13
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            end
            object EditSpamName: TEdit
              Left = 80
              Top = 21
              Width = 422
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
            end
            object EditSpamURL: TEdit
              Left = 80
              Top = 48
              Width = 422
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
            end
            object EditSpamDiscription: TEdit
              Left = 80
              Top = 75
              Width = 422
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077
          ImageIndex = 7
          ExplicitHeight = 391
          object GroupBox6: TGroupBox
            Left = 0
            Top = 289
            Width = 516
            Height = 133
            Align = alBottom
            Caption = #1057#1090#1072#1088#1090
            TabOrder = 0
            ExplicitTop = 258
            DesignSize = (
              516
              133)
            object ButtonStartDeleteDo: TButton
              Left = 345
              Top = 48
              Width = 121
              Height = 42
              Anchors = [akRight, akBottom]
              Caption = 'Start / '#1055#1091#1089#1082
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 0
              Images = ILBigIcons
              ParentFont = False
              TabOrder = 0
              OnClick = ButtonStartDeleteDoClick
            end
          end
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 516
            Height = 289
            Align = alClient
            Caption = #1042#1099#1073#1077#1088#1080#1090#1077', '#1095#1090#1086' '#1074#1099' '#1093#1086#1090#1080#1090#1077' '#1091#1076#1072#1083#1080#1090#1100
            TabOrder = 1
            ExplicitHeight = 258
            object Label18: TLabel
              Left = 2
              Top = 15
              Width = 512
              Height = 26
              Align = alTop
              Caption = 
                #1053#1072' '#1074#1089#1077#1093' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1074#1072#1084#1080' '#1089#1072#1081#1090#1072#1093' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' '#1091#1076#1072#1083#1080#1090#1089#1103' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1077', '#1074#1099#1073 +
                #1088#1072#1085#1085#1099#1093' '#1074#1072#1084#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
              ExplicitWidth = 506
            end
            object CBDeletePosts: TCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 136
              Width = 506
              Height = 17
              Align = alTop
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' "Posts"'
              TabOrder = 0
              ExplicitLeft = 3
              ExplicitTop = 123
              ExplicitWidth = 512
            end
            object CBDeleteMedia: TCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 90
              Width = 506
              Height = 17
              Align = alTop
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' "Media"'
              TabOrder = 1
              ExplicitLeft = 6
              ExplicitTop = 55
              ExplicitWidth = 131
            end
            object CBDeleteLinks: TCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 67
              Width = 506
              Height = 17
              Align = alTop
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' "Links"'
              TabOrder = 2
              ExplicitLeft = 6
              ExplicitTop = 78
              ExplicitWidth = 131
            end
            object CBDeletePages: TCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 113
              Width = 506
              Height = 17
              Align = alTop
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' "Pages"'
              TabOrder = 3
              ExplicitLeft = 497
              ExplicitTop = 83
              ExplicitWidth = 164
            end
            object CBDeleteComments: TCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 44
              Width = 506
              Height = 17
              Align = alTop
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' "Comments"'
              TabOrder = 4
              ExplicitLeft = 6
              ExplicitTop = 124
              ExplicitWidth = 131
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' (Discussion)'
          ImageIndex = 8
          ExplicitHeight = 391
          object GroupBox10: TGroupBox
            Left = 0
            Top = 289
            Width = 516
            Height = 133
            Align = alBottom
            Caption = #1057#1090#1072#1088#1090
            TabOrder = 0
            ExplicitTop = 258
            DesignSize = (
              516
              133)
            object ButtonStartSettingsDo: TButton
              Left = 345
              Top = 48
              Width = 121
              Height = 42
              Anchors = [akRight, akBottom]
              Caption = 'Start / '#1055#1091#1089#1082
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 0
              Images = ILBigIcons
              ParentFont = False
              TabOrder = 0
              OnClick = ButtonStartSettingsDoClick
            end
          end
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 0
            Width = 516
            Height = 289
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            ParentBackground = True
            TabOrder = 1
            ExplicitHeight = 258
            object Label33: TLabel
              AlignWithMargins = True
              Left = 8
              Top = 398
              Width = 488
              Height = 22
              Margins.Left = 8
              Align = alTop
              Caption = 'Avatars'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -18
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = 244
              ExplicitWidth = 68
            end
            object Label34: TLabel
              AlignWithMargins = True
              Left = 8
              Top = 426
              Width = 483
              Height = 39
              Margins.Left = 8
              Margins.Right = 8
              Align = alTop
              Caption = 
                'An avatar is an image that follows you from weblog to weblog app' +
                'earing beside your name when you comment on avatar enabled sites' +
                '. Here you can enable the display of avatars for people who comm' +
                'ent on your blog.'
              WordWrap = True
              ExplicitTop = 272
              ExplicitWidth = 472
            end
            object GroupBox11: TGroupBox
              Left = 0
              Top = 0
              Width = 499
              Height = 113
              Align = alTop
              Caption = 'Default article settings'
              TabOrder = 0
              object Label11: TLabel
                Left = 16
                Top = 88
                Width = 276
                Height = 13
                Caption = '(These settings may be overridden for individual articles.)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsItalic]
                ParentFont = False
              end
              object CheckBox1: TCheckBox
                Left = 16
                Top = 16
                Width = 385
                Height = 17
                Caption = 
                  'Attempt to notify any blogs linked to from the article (slows do' +
                  'wn posting.)'
                TabOrder = 0
              end
              object CheckBox2: TCheckBox
                Left = 16
                Top = 39
                Width = 385
                Height = 17
                Caption = 
                  'Allow link notifications from other blogs (pingbacks and trackba' +
                  'cks.) '
                TabOrder = 1
              end
              object CheckBox3: TCheckBox
                Left = 16
                Top = 62
                Width = 385
                Height = 17
                Caption = 'Allow people to post comments on new articles '
                TabOrder = 2
              end
            end
            object GroupBox13: TGroupBox
              Left = 0
              Top = 842
              Width = 499
              Height = 61
              Align = alTop
              Caption = 'E-mail me whenever'
              TabOrder = 1
              object CheckBox9: TCheckBox
                Left = 16
                Top = 16
                Width = 153
                Height = 17
                Caption = 'Anyone posts a comment'
                TabOrder = 0
              end
              object CheckBox10: TCheckBox
                Left = 16
                Top = 39
                Width = 190
                Height = 17
                Caption = 'A comment is held for moderation'
                TabOrder = 1
              end
            end
            object GroupBox12: TGroupBox
              Left = 0
              Top = 113
              Width = 499
              Height = 154
              Align = alTop
              Caption = 'Other comment settings'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object Label23: TLabel
                Left = 344
                Top = 64
                Width = 23
                Height = 13
                Caption = 'days'
              end
              object Label24: TLabel
                Left = 267
                Top = 88
                Width = 54
                Height = 13
                Caption = 'levels deep'
              end
              object Label25: TLabel
                Left = 247
                Top = 109
                Width = 178
                Height = 13
                Caption = 'top level comments per page and the'
              end
              object Label26: TLabel
                Left = 504
                Top = 109
                Width = 124
                Height = 13
                Caption = 'page displayed by default'
              end
              object Label27: TLabel
                Left = 17
                Top = 131
                Width = 189
                Height = 13
                Caption = 'Comments should be displayed with the'
              end
              object Label28: TLabel
                Left = 280
                Top = 131
                Width = 165
                Height = 13
                Caption = 'comments at the top of each page'
              end
              object CheckBox4: TCheckBox
                Left = 17
                Top = 16
                Width = 385
                Height = 17
                Caption = 'Comment author must fill out name and e-mail'
                TabOrder = 0
              end
              object CheckBox5: TCheckBox
                Left = 17
                Top = 39
                Width = 385
                Height = 17
                Caption = 'Users must be registered and logged in to comment'
                TabOrder = 1
              end
              object CheckBox6: TCheckBox
                Left = 17
                Top = 62
                Width = 264
                Height = 17
                Caption = 'Automatically close comments on articles older than'
                TabOrder = 2
              end
              object CheckBox7: TCheckBox
                Left = 17
                Top = 85
                Width = 189
                Height = 17
                Caption = 'Enable threaded (nested) comments'
                TabOrder = 3
              end
              object CheckBox8: TCheckBox
                Left = 17
                Top = 108
                Width = 176
                Height = 17
                Caption = 'Break comments into pages with'
                TabOrder = 4
              end
              object Edit1: TEdit
                Left = 287
                Top = 56
                Width = 50
                Height = 21
                TabOrder = 5
                Text = '14'
              end
              object ComboBox1: TComboBox
                Left = 212
                Top = 80
                Width = 49
                Height = 21
                Style = csDropDownList
                ItemIndex = 3
                TabOrder = 6
                Text = '5'
                Items.Strings = (
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10')
              end
              object Edit2: TEdit
                Left = 191
                Top = 102
                Width = 50
                Height = 21
                TabOrder = 7
                Text = '50'
              end
              object ComboBox2: TComboBox
                Left = 431
                Top = 102
                Width = 66
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 8
                Text = 'newest'
                Items.Strings = (
                  'newest'
                  'oldest')
              end
              object ComboBox3: TComboBox
                Left = 212
                Top = 125
                Width = 61
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 9
                Text = 'asc'
                Items.Strings = (
                  'asc'
                  'desc')
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 778
              Width = 499
              Height = 64
              Align = alTop
              Caption = 'Before a comment appears'
              TabOrder = 3
              object CheckBox11: TCheckBox
                Left = 17
                Top = 16
                Width = 275
                Height = 17
                Caption = 'An administrator must always approve the comment'
                TabOrder = 0
              end
              object CheckBox12: TCheckBox
                Left = 17
                Top = 39
                Width = 320
                Height = 17
                Caption = 'Comment author must have a previously approved comment'
                TabOrder = 1
              end
            end
            object GroupBox15: TGroupBox
              Left = 0
              Top = 624
              Width = 499
              Height = 154
              Align = alTop
              Caption = 'Comment Moderation'
              TabOrder = 4
              DesignSize = (
                499
                154)
              object Label29: TLabel
                Left = 17
                Top = 16
                Width = 203
                Height = 13
                Caption = 'Hold a comment in the queue if it contains '
              end
              object Label30: TLabel
                Left = 263
                Top = 16
                Width = 431
                Height = 13
                Caption = 
                  'or more links. (A common characteristic of comment spam is a lar' +
                  'ge number of hyperlinks.)'
              end
              object Label31: TLabel
                Left = 16
                Top = 35
                Width = 444
                Height = 39
                Anchors = [akLeft, akTop, akRight]
                Caption = 
                  'When a comment contains any of these words in its content, name,' +
                  ' URL, e-mail, or IP, it will be held in the moderation queue. On' +
                  'e word or IP per line. It will match inside words, so '#8220'press'#8221' wi' +
                  'll match '#8220'WordPress'#8221'.'
                WordWrap = True
              end
              object Edit3: TEdit
                Left = 220
                Top = 9
                Width = 37
                Height = 21
                TabOrder = 0
                Text = '2'
              end
              object Memo1: TMemo
                Left = 17
                Top = 78
                Width = 479
                Height = 70
                Anchors = [akLeft, akTop, akRight]
                ScrollBars = ssVertical
                TabOrder = 1
              end
            end
            object GroupBox16: TGroupBox
              Left = 0
              Top = 267
              Width = 499
              Height = 128
              Align = alTop
              Caption = 'Comment Blacklist'
              TabOrder = 5
              object Label32: TLabel
                Left = 2
                Top = 15
                Width = 495
                Height = 26
                Align = alTop
                Caption = 
                  'When a comment contains any of these words in its content, name,' +
                  ' URL, e-mail, or IP, it will be marked as spam. One word or IP p' +
                  'er line. It will match inside words, so '#8220'press'#8221' will match '#8220'Word' +
                  'Press'#8221'.'
                WordWrap = True
                ExplicitWidth = 494
              end
              object Memo2: TMemo
                Left = 2
                Top = 41
                Width = 495
                Height = 65
                Align = alTop
                TabOrder = 0
              end
            end
            object RadioGroup1: TRadioGroup
              Left = 0
              Top = 468
              Width = 499
              Height = 60
              Align = alTop
              Caption = 'Avatar Display'
              ItemIndex = 1
              Items.Strings = (
                'Don'#8217't show Avatars'
                'Show Avatars')
              TabOrder = 6
            end
            object RadioGroup2: TRadioGroup
              Left = 0
              Top = 528
              Width = 499
              Height = 96
              Align = alTop
              Caption = 'Maximum Rating'
              ItemIndex = 0
              Items.Strings = (
                'G '#8212' Suitable for all audiences'
                'PG '#8212' Possibly offensive, usually for audiences 13 and above'
                'R '#8212' Intended for adult audiences above 17'
                'X '#8212' Even more mature than above')
              TabOrder = 7
            end
            object RadioGroup3: TRadioGroup
              Left = 0
              Top = 903
              Width = 499
              Height = 149
              Align = alTop
              Caption = 'Default Avatar'
              ItemIndex = 0
              Items.Strings = (
                'Mystery Man'
                'Blank'
                'Gravatar Logo'
                'Identicon (Generated)'
                'Wavatar (Generated)'
                'MonsterID (Generated)')
              TabOrder = 8
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' (Permalinks)'
          ImageIndex = 9
          ExplicitHeight = 391
          object GroupBox17: TGroupBox
            Left = 0
            Top = 289
            Width = 516
            Height = 133
            Align = alBottom
            Caption = #1057#1090#1072#1088#1090
            TabOrder = 0
            ExplicitTop = 258
            DesignSize = (
              516
              133)
            object ButtonStartSettings2Do: TButton
              Left = 345
              Top = 48
              Width = 121
              Height = 42
              Anchors = [akRight, akBottom]
              Caption = 'Start / '#1055#1091#1089#1082
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 0
              Images = ILBigIcons
              ParentFont = False
              TabOrder = 0
              OnClick = ButtonStartSettings2DoClick
            end
          end
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 516
            Height = 289
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            ParentBackground = True
            TabOrder = 1
            ExplicitHeight = 258
            object GroupBox18: TGroupBox
              Left = 0
              Top = 0
              Width = 516
              Height = 129
              Align = alTop
              Caption = 'Common settings'
              TabOrder = 0
              DesignSize = (
                516
                129)
              object Label35: TLabel
                Left = 135
                Top = 17
                Width = 160
                Height = 13
                Caption = 'http://www.mysites.com/?p=123'
                Color = clBtnFace
                ParentColor = False
              end
              object Label36: TLabel
                Left = 135
                Top = 40
                Width = 245
                Height = 13
                Caption = 'http://www.mysites.com/2010/05/12/sample-post/'
              end
              object Label37: TLabel
                Left = 135
                Top = 63
                Width = 229
                Height = 13
                Caption = 'http://www.mysites.com/2010/05/sample-post/'
              end
              object Label38: TLabel
                Left = 135
                Top = 86
                Width = 185
                Height = 13
                Caption = 'http://www.mysites.com/archives/123'
              end
              object RadioButton1: TRadioButton
                Left = 16
                Top = 13
                Width = 113
                Height = 17
                Caption = 'Default'
                TabOrder = 0
                OnClick = RadioButton1Click
              end
              object RadioButton2: TRadioButton
                Left = 16
                Top = 36
                Width = 113
                Height = 17
                Caption = 'Day and name'
                TabOrder = 1
                OnClick = RadioButton2Click
              end
              object RadioButton3: TRadioButton
                Left = 16
                Top = 59
                Width = 113
                Height = 17
                Caption = 'Month and name'
                TabOrder = 2
                OnClick = RadioButton3Click
              end
              object RadioButton4: TRadioButton
                Left = 16
                Top = 82
                Width = 113
                Height = 17
                Caption = 'Numeric'
                TabOrder = 3
                OnClick = RadioButton4Click
              end
              object RadioButton5: TRadioButton
                Left = 16
                Top = 105
                Width = 113
                Height = 17
                Caption = 'Custom Structure'
                Checked = True
                TabOrder = 4
                TabStop = True
                OnClick = RadioButton5Click
              end
              object Edit4: TEdit
                Left = 136
                Top = 104
                Width = 445
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 5
                Text = '/%category%/%year%/%monthnum%/%day%/%postname%.html'
              end
              object Button1: TButton
                Left = 117
                Top = 104
                Width = 17
                Height = 21
                Caption = '>'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                OnClick = Button1Click
              end
            end
            object GroupBox19: TGroupBox
              Left = 0
              Top = 129
              Width = 516
              Height = 112
              Align = alTop
              Caption = 'Optional'
              TabOrder = 1
              object Label39: TLabel
                Left = 16
                Top = 16
                Width = 446
                Height = 39
                Caption = 
                  'If you like, you may enter custom structures for your category a' +
                  'nd tag URLs here. For example, using topics as your category bas' +
                  'e would make your category links like http://example.org/topics/' +
                  'uncategorized/. If you leave these blank the defaults will be us' +
                  'ed.'
                WordWrap = True
              end
              object Label40: TLabel
                Left = 16
                Top = 61
                Width = 71
                Height = 13
                Caption = 'Category base'
              end
              object Label41: TLabel
                Left = 16
                Top = 88
                Width = 44
                Height = 13
                Caption = 'Tag base'
              end
              object Edit5: TEdit
                Left = 112
                Top = 56
                Width = 257
                Height = 21
                TabOrder = 0
              end
              object Edit6: TEdit
                Left = 112
                Top = 83
                Width = 257
                Height = 21
                TabOrder = 1
              end
            end
          end
        end
      end
      object PanelStartAndPB: TPanel
        Left = 0
        Top = 451
        Width = 720
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 420
        object PBMainFormDomenDo: TProgressBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 714
          Height = 24
          Hint = #1055#1088#1086#1075#1088#1077#1089#1089' '#1073#1072#1088
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1091#1095#1085#1099#1077' '#1085#1072#1073#1086#1088#1099
      ImageIndex = 2
      ExplicitHeight = 450
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 720
        Height = 133
        Align = alTop
        Caption = #1056#1091#1095#1085#1072#1103' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
        TabOrder = 0
        DesignSize = (
          720
          133)
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 42
          Height = 13
          Caption = #1057#1089#1099#1083#1082#1072':'
        end
        object Label2: TLabel
          Left = 8
          Top = 43
          Width = 34
          Height = 13
          Caption = #1051#1086#1075#1080#1085':'
        end
        object Label3: TLabel
          Left = 8
          Top = 70
          Width = 41
          Height = 13
          Caption = #1055#1072#1088#1086#1083#1100':'
        end
        object Label19: TLabel
          Left = 218
          Top = 97
          Width = 271
          Height = 26
          Caption = 
            #1042' '#1087#1072#1088#1086#1083#1077' '#1085#1077' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1089#1080#1084#1074#1086#1083#1086#1074', '#1085#1091#1078#1076#1072#1102#1097#1080#1093#1089#1103' '#1074' '#1101#1082#1088#1072#1085#1080#1088#1086#1074#1072#1085#1080#1080', '#1085 +
            #1072#1087#1088#1080#1084#1077#1088': #, $, @ '#1080' '#1090'.'#1076'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          WordWrap = True
        end
        object EditSiteLink: TEdit
          Left = 80
          Top = 16
          Width = 625
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'http://www.mysites.com'
          OnChange = EditSiteLinkChange
        end
        object EditSiteLogin: TEdit
          Left = 80
          Top = 43
          Width = 625
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = 'admin'
          OnChange = EditSiteLoginChange
        end
        object EditSitePassword: TEdit
          Left = 80
          Top = 70
          Width = 625
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          PasswordChar = '*'
          TabOrder = 2
          OnChange = EditSitePasswordChange
        end
        object ButtonCheckAuthorize: TButton
          Left = 3
          Top = 97
          Width = 209
          Height = 25
          Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
          TabOrder = 3
          OnClick = ButtonCheckAuthorizeClick
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 133
        Width = 720
        Height = 142
        Align = alTop
        Caption = #1056#1091#1095#1085#1086#1077' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1089#1099#1083#1082#1080
        TabOrder = 1
        DesignSize = (
          720
          142)
        object Label4: TLabel
          Left = 8
          Top = 35
          Width = 62
          Height = 13
          Caption = #1048#1084#1103' '#1089#1089#1099#1083#1082#1080':'
        end
        object Label5: TLabel
          Left = 8
          Top = 62
          Width = 42
          Height = 13
          Caption = #1057#1089#1099#1083#1082#1072':'
        end
        object Label6: TLabel
          Left = 8
          Top = 89
          Width = 53
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
        end
        object Label42: TLabel
          Left = 136
          Top = 16
          Width = 218
          Height = 13
          Caption = #1042#1099#1087#1086#1083#1085#1103#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1087#1086#1089#1083#1077' '#1072#1090#1086#1088#1080#1079#1072#1094#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AddNameLink: TEdit
          Left = 80
          Top = 35
          Width = 625
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object AddLinkURL: TEdit
          Left = 80
          Top = 61
          Width = 625
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object AddDiscription: TEdit
          Left = 80
          Top = 86
          Width = 625
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
        end
        object ButtonPost: TButton
          Left = 3
          Top = 113
          Width = 209
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
          Enabled = False
          TabOrder = 3
          OnClick = ButtonPostClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1090#1083#1072#1076#1086#1095#1085#1099#1077' '#1087#1072#1085#1077#1083#1080
      ImageIndex = 1
      TabVisible = False
      ExplicitHeight = 450
      object GroupBox5: TGroupBox
        Left = 3
        Top = 0
        Width = 481
        Height = 193
        Caption = #1053#1072#1081#1076#1077#1085#1085#1099#1077' '#1086#1096#1080#1073#1082#1080
        TabOrder = 0
        object Label17: TLabel
          Left = 8
          Top = 16
          Width = 110
          Height = 13
          Caption = #1054#1096#1080#1073#1086#1095#1085#1099#1093' '#1076#1086#1084#1077#1085#1086#1074':'
        end
        object MemoErrorDomen: TMemo
          Left = 10
          Top = 43
          Width = 464
          Height = 142
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object EditErrorDomenKoilvio: TEdit
          Left = 128
          Top = 16
          Width = 344
          Height = 21
          TabOrder = 1
          Text = '0'
          OnChange = EditErrorDomenKoilvioChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 199
        Width = 481
        Height = 202
        Caption = #1054#1090#1083#1072#1076#1086#1095#1085#1072#1103' '#1087#1072#1085#1077#1083#1100
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 87
          Height = 13
          Caption = #1056#1077#1092#1077#1088#1077#1088' '#1089#1089#1099#1083#1082#1072':'
        end
        object EditReferelLink: TEdit
          Left = 101
          Top = 20
          Width = 371
          Height = 21
          TabOrder = 0
          Text = 'Referer link'
        end
        object MemoHtmlPage: TMemo
          Left = 11
          Top = 47
          Width = 461
          Height = 142
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      734
      49)
    object LabelProgrammName: TLabel
      Left = 11
      Top = 7
      Width = 86
      Height = 33
      Caption = 'Admin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label43: TLabel
      Left = 103
      Top = 7
      Width = 64
      Height = 33
      Caption = 'Word'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 166
      Top = 7
      Width = 63
      Height = 33
      Caption = 'Press'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelInformer: TLabel
      Left = 444
      Top = 7
      Width = 287
      Height = 39
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 484
    end
    object LabelNewVerIsset: TLabel
      Left = 112
      Top = 33
      Width = 120
      Height = 13
      Caption = #1044#1086#1089#1090#1091#1087#1085#1072' '#1085#1086#1074#1072#1103' '#1074#1077#1088#1089#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      Visible = False
    end
  end
  object PanelButtom: TPanel
    Left = 0
    Top = 565
    Width = 734
    Height = 18
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    ExplicitTop = 534
    DesignSize = (
      734
      18)
    object LabelCopy: TLabel
      Left = 629
      Top = 3
      Width = 98
      Height = 11
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'http://adminwp.ucoz.ru/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = LabelCopyClick
    end
  end
  object IdCM: TIdCookieManager
    Left = 72
    Top = 224
  end
  object TI: TTrayIcon
    Hint = 'Admin WP'
    Icon.Data = {
      0000010001001010000001002000680400001600000028000000100000002000
      0000010020000000000040040000000000000000000000000000000000000000
      000A000000160000002600000037343434656A6A6AB57C7C7CE36D6D6DFF6D6D
      6DFF7C7C7CE36A6A6AB5343434650000003700000026000000160000000A0000
      00000000000000000000888888728A8A8AEEB1B1B1BFE0E0E0CDFFFFFFEDFFFF
      FFEDE0E0E0CDB1B1B1BF8A8A8AEE888888720000000000000000000000000000
      000088888806888888B7979797D6EAEAEADBF8F8F8FFDCDCDCFF9C9C9CFF9C9C
      9CFFC2C2C2FFFFFFFFFFEAEAEADB989898D4888888B788888806000000000000
      0000888888939C9C9CCDF4F4F4F3B4B4B4FFF9F9F9FFF2F2F2FF8A8A8AFF8181
      81FFCBCBCBFFFEFEFFFFC7C7C7FFF0F0F0F39C9C9CCD88888890000000008888
      882D8A8A8AECF3F3F3D9B4B4B4FFC2C2C2FFFEFEFEFFF1F1F1FF929292FF7272
      72FFF3F3F3FFFEFDFEFFD8D8D9FF989898FFF2F2F2D88A8A8AEC8888882D8888
      8893B2B2B2BDD4D4D4FFA1A1A1FFE1E1E1FFFEFEFEFFADADADFFB3B3B3FF8484
      84FFFEFEFFFFE0E0E0FFE3E3E3FF878787FFBEBEBEFFB2B2B2BD888888908888
      88DBE3E3E3CCB1B1B1FFA6A6A6FFFDFDFDFFE8E8E8FF88888BFFD7D7D7FFC0C0
      C0FFFEFEFEFFB0B0B0FFC3C3C3FFBBBBBBFF969696FFE3E3E3CC888888D58888
      88F9F8F8F8EE9D9D9DFFC6C6C6FFFEFEFEFFC3C3C3FF939393FFCACACAFFFEFE
      FEFFFCFCFCFF959595FFAAAAAAFFECECECFF999999FFF9F9F9EE888888F38888
      88F9FCFCFCED989898FFEDEDEDFFFBFBFBFF9C9C9CFF949494FFB7B7B7FFFEFE
      FEFFDDDDDDFF88888BFF9E9D9EFFFFFFFFFFAFAFAFFFF8F8F8EE888888F08888
      88D8E3E3E3CCB8B8B8FFFFFFFFFFE2E2E2FF919191FF909090FFDCDCDCFFFFFF
      FFFFB3B3B3FF909090FFAFAEAEFFFFFFFFFFD3D2D3FFE3E3E3CC888888D58888
      8890B2B2B2BDFAFAFAFFFFFFFFFFDBDBDBFF929292FFB2B2B2FFFEFEFEFFFFFF
      FFFFAAAAAAFF8D8D8DFFE1E2E1FFFFFFFFFFF0F0F1FFB2B2B2BD8888888D8888
      882D8A8A8AEEF8F8F8D7B8B8B8FFB4B4B4FF8E8E8EFFB2B2B2FFB4B4B4FFB4B4
      B4FFA9A9A9FF898989FFFAFAFAFFFFFFFFFFF9F9F9E28A8A8AEE8888882A0000
      0000888888909B9B9BCFF0F0F0F29B9B9BFF868686FF868686FF868686FF8686
      86FF868686FF868686FFB6B6B6FFFFFFFFF69B9B9BCF8888888D000000000000
      000088888806888888B7969696D9EAEAEADBC5C5C5FF9E9E9EFF888888FF8383
      83FF9B9B9BFFCACACAFFEDEDEDDA969696D9888888B788888806000000000000
      00000000000000000000888888728A8A8AEEAFAFAFC0DEDEDECEE2E2E2EFE2E2
      E2EFDEDEDECEAFAFAFC08A8A8AEE888888720000000000000000000000000000
      0000000000000000000000000000888888278888888D888888CC888888FC8888
      88FC888888CC8888888D88888827000000000000000000000000000000000000
      0000E00700008001000080010000000000000000000000000000000000000000
      00000000000000000000000000008001000080010000E0070000F00F0000}
    PopupMenu = PMTray
    Visible = True
    OnDblClick = TIDblClick
    Left = 112
    Top = 176
  end
  object PMTray: TPopupMenu
    Images = ILIcons
    OnPopup = PMTrayPopup
    Left = 112
    Top = 224
    object N1: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      ImageIndex = 0
      OnClick = N1Click
    end
    object N10: TMenuItem
      Caption = #1054#1082#1085#1086' '#1089#1090#1072#1090#1091#1089#1072
      OnClick = N10Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 1
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 2
      OnClick = N4Click
    end
  end
  object MainMenu: TMainMenu
    Images = ILIcons
    Left = 152
    Top = 176
    object N5: TMenuItem
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      object N6: TMenuItem
        Caption = #1054#1082#1085#1086' '#1089#1090#1072#1090#1091#1089#1072
        OnClick = N6Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ImageIndex = 2
        OnClick = N7Click
      end
    end
    object N8: TMenuItem
      Caption = #1054#1087#1094#1080#1080
      object N9: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
        ImageIndex = 1
        OnClick = N9Click
      end
    end
    object N14: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N13: TMenuItem
        Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
        Enabled = False
        ImageIndex = 4
        OnClick = N13Click
      end
      object RE1: TMenuItem
        Caption = 'RE-'#1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
        Enabled = False
        ImageIndex = 5
        OnClick = RE1Click
      end
      object N12: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ImageIndex = 3
        OnClick = N12Click
      end
    end
  end
  object ILIcons: TImageList
    Left = 24
    Top = 176
    Bitmap = {
      494C01010C004801F80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6E0C4008C6D4600785C330000000000000000007A5C33007D593300EAD2
      B60000000000000000000000000000000000000000000000000000000000FEE9
      CE00000000000000000092724900BA902500AC7B1F00936C4000000000000000
      0000F4DACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0E3B70089CD94002AB748002DB74C0027AA49003CAC540079CD8500BEEA
      C500000000000000000000000000000000000000000000000000000000000000
      00009D794B00CB9A5C00C9935400814E10007B4F1000CA915300D4985C00A379
      4C00000000000000000000000000000000000000000000000000FFDEAD00BA87
      4800D1AE8200FFFFD300BF833700E5AC2100E8A21F00C88C3300FFEECB00D7A9
      8A00A56C3500F6D4A900000000000000000000000000F8F8F807F0F0F00FE6E6
      E619E0E0E01FDFDFDF20DFDFDF20DFDFDF20DFDFDF20DFDFDF20DFDFDF20E0E0
      E01FE0E0E01FDEDEDE21E7E7E718FBFBFB0400000000000000000000000064BD
      77002EB1500034C856001FD9430024E34C002BE956002DE25B0028C251002CA7
      4D006EC3850000000000000000000000000000000000DAD8CD00776F5E00977E
      5C0066370000E9AA6000E5A05100DD974A00D3954700EBA35500E99F57006832
      00009A87640071736000DADACE000000000000000000E5D6C300BE843900F0A7
      4B00CE964F00C58B4000F19E3500E8AB3D00F1A82800DA9B2300B78B2E00C488
      2800EC932400BD702700F6CFC6000000000000000000F2F2F20DDEDEDE21AFAF
      B1507575898A96969A69BDBDBD42C0C0C03FBFBFBF40BFBFBF40BFBFBF40C2C2
      C23DB3B3B34C6E6F9291C3C3C53CF9F9F90600000000000000004EA261002CB6
      500018D84F0003DE400010B036001BC6420014CD410007CA3E0012D44B0025D7
      580021C052001CAD4B000000000000000000000000007F654700E4AA6200E29E
      4500CA974E00DBBD8C00F4DEB400FFF3A600FFEDAC00F8E0B600E1C48B00CD99
      4C00DD944200F2B37700785A41000000000000000000BD804200EDB55C00E9B5
      4300FDC34200F1B53D00DAAA4100E1A52D00CE8A3F00D09E4400F7A32200EBAF
      2700E39C2300D3972D00CE6D23000000000000000000FEFEFE01F9F9F9065E5F
      9EA10204ADFF3D3E97C2D4D4D42BF2F2F20DF1F1F10EF1F1F10EF2F2F20DF0F0
      F00F9090A56F2426B2DEE3E3E41C000000000000000051AE5D0020D43F001BE4
      41001BC83E001BAF39009AD29F0038B24E0011BC3C0026D14F0022CA48001DD6
      400025DD55001CC251004DB5560000000000000000007E592700F9C98700FFD8
      8300FFDC9A00FAE1B900FECC8400D9AC6900DCAA7000FFCC8500FFEABA00FFDC
      9600FFDC8D00FAC48F007C5326000000000000000000DDBB8D00D8A35200FBC7
      5D00E3B74400D5A73B00DAA34000E9A62C00E7983700E08C2600CC891400E7A4
      3700DDA73500C08B3000EDB48D00000000000000000000000000000000007677
      BF941E22C5FF0204B2FF8989A976FDFDFD02000000000000000000000000CECE
      D0312426A6DD8687BD7E0000000000000000B8DCAE0033BB630000D552000FD6
      45002D9B3D00DEFDDE00FFFEFA00C3F4CE0030B74B000EB73C002DDA500027C4
      55001ACB46001AE3520031AE4E00B0E4BF0000000000E3D0AF00CC892D00FFDF
      9F00F9D5A500D6A05900663F0B008C5E24008D5B27006E451400D49D5200FFE1
      AF00FFE0A600CC863300DFCAAB00000000000000000000000000E6AF5E00FDC2
      5B00D6B04000E4BC5200E6A44500CA984000D18D3A00EC8D3000CB9A3800C073
      1C00EDBD4D00C58B2B000000000000000000000000000000000000000000ECEC
      EE146265CACB1316BDFF2323A0DCCDCDD0320000000000000000E0E0E01F4748
      98B83A3EC7D6ECECEF13000000000000000082C374001EC3540000C252001993
      3B00DEF4D700FEF6FD00FFF9FF00FFFEFA00C8EDD30025A8370012B748002FD7
      5C001DCA5A000EDE440029C150006CB78400B6A78700946F3500D4AB6D00EFBF
      7D00E0AE6C0072430B008D6334000000000000000000895F32007D4E1600D9A4
      6500FFCE8F00C99E650099733C00B8A98900A6A37000D2BC6E00DEA65700FDBF
      6100E5BA4300E4BA4900E3A454000000000000000000A8693700BE8A3D00D181
      2E00DD9E2B00F0AE3700C8944700AE875A000000000000000000000000000000
      0000D0D0DD354A4ECFEB0B0EBBFF64649D9BEFEFEF10E7E7E7186565979A1114
      C3FFBABBD04B000000000000000000000000419B480041E869002DAB4800E8F7
      DB00FFFCF700CFF5E30087D19500EEF5F200FFFFF900CCEAD1001F9F2F0014BB
      4E001BD6510019D35C003FE47B003C9A5900BD842F00FFE5A600E6CDA300F9C5
      7F00D5923D0086571F00000000000000000000000000000000008B5B2700D38E
      3E00F3BF7900EDD4AA00FFDFA100C2883600DFD08800FFE98D00FFD89A00EFC0
      7C00EEC35600DCB85400000000000000000000000000000000009E5B1600D08D
      3600CE831F00E7B33B00F6B24700B28A56000000000000000000000000000000
      000000000000B3B4D35D3539D1FF090BAEF68F8F9F706F6F93901115C3FF8889
      CA8F00000000000000000000000000000000359B4E0052F385004FAE6300EDF1
      D800DDFFD7001AA94D0013B944003FA75200E6F3EB00FFFFF100D8FBE1001DA7
      370010BB4F0025CD6A0056FE9D00288F4400DE932D00F8DBAF00FFEDBB00E4B0
      6D00C37C2400AC6E200000000000000000000000000000000000BB7A3500AF69
      1600E2B16D00FFECB600F3D7AE00DC8F3200F4E7B300FEEEAB00FAE9C200E8D0
      A600FFE89C00E9D4900000000000000000000000000000000000C3803B00E4B2
      6600DCA15B00EFD98100FFD38100E4C392000000000000000000000000000000
      000000000000000000009B9CC87F2A2DCBFF0A0A9BF50B0D91FF5D60C1C5F0F0
      F20F000000000000000000000000FCFBFA07298C3E0066FFB4003FC590006BC5
      8A003AAB530025CD620026DB620027D2660048B86000E5E4E600FFF8EB00CFFD
      D90021A6450029C9650066FDAD00328A4400DFB88C00B6875100D6B69200EEB2
      6600DF983D0097652300916121000000000000000000916225008E5B2300DA92
      3E00E2A95A00DAC09200AC7E4800DEB69300D0CCBA00DCDAB800F1E7BF00F9E2
      B500F4D9A700E4D5A700F3F1D2000000000000000000F3DDB300F1CC8800E8C0
      8B00F1D29B00EDE2A600DFD0A900DBC49E000000000000000000000000000000
      00000000000000000000D4D4D62B5357AFD52025C9FF0A0EA2FEA8A8B55B0000
      0000000000000000000000000000FBFAF80B4A924C007CFFBA003FD59A0054E0
      A00056DF8D0062EE9A005BE598004FF394003DD5890054AF7700F0FAF400FFFF
      ED00C9FED20030A84F0071ECB4004692520000000000F5D7BA00E9AE6900FFE0
      9F00B37C3300C7812400BA802E0097651D0091641300B47B2C00B66D1B00AD75
      3400FFE19B00E7B16400F2D6B800000000000000000000000000F1DEA500FFEE
      AE00F5D8AC00F2DEB500E4D39400EBE8D300E9D8B700EBC38900DED69A00DBB3
      9000F2E1A900E6D19A0000000000000000000000000000000000000000000000
      0000F7F7F708C7C7CA384D4E99B20C10B4FE4D52D4FF272CCEFF4A4A9BB5D5D5
      D52AFEFEFE010000000000000000FDFDFC046E9C6D0085EA9C006FEDAB005BD6
      AE006CE3BC0064DC9C007ADDAB0066D7B1005FEAB70051DB9B0059A56B00EBF1
      DA00FCFFE9006DB073007EE4B5005C9A640000000000AB986D00FFF2C700FFF2
      BB00FFCE8600B3742400A9672000A46729009C6123008C641900A96E1E00FFC8
      8200FFF3BA00FFF2C800C1946E000000000000000000F3E8CC00F3E0B500FFEF
      BB00FFE8B200F0D9A700EAD6A600F4DFAB00EFD9A500E9D39F00D8C28E00ECD4
      A000FFE8B400F5DAA700FFE6B300000000000000000000000000FEFEFE01EEEE
      EE11A8A8B1573335A3CE090EC3FF3A3ED8FF9B9CC5819FA0C8822F34DCFF4D4D
      9CB2DBDBDB24FDFDFD020000000000000000B2DBBF0062A77C00A4FFCE006ADF
      A80055D8A50055DDAD0062E29B0069ECA30052E0950061EE9F0059E3960038AC
      5F005EBF7500A4F4AD00659F6900B6E2BD0000000000BB967400FFDEAB00FFEA
      B000F7D8A100FFE7AE00B1894800AD7C3000BE7A3100AD8A4800FFE5AE00FFD5
      A100FFEDB100FFE0AB00BE9574000000000000000000E9E0C500F5E2BC00FFEC
      BE00FFEBBB00FCE8B900F1DEB100DDC79300E3CC9A00EED9A600F2DCAC00FFEA
      BC00FFEDC000E9D4A700E3CDA3000000000000000000FCFCFC03D6D6D7297677
      9C8A1419B0EE0B11C4FF4045DAFF9C9DCC870000000000000000B9BAD7623C41
      D9F54F51A1B0D6D6D729FBFBFB0400000000000000004A7D58008EDCAD00A4FF
      D70075ECB90064DFB30073D6A4006FDEB2006DE1B60062E1B4005BD4AE0079EA
      C50097FADA007ED2B9005B8965000000000000000000FCE1CC00CAA98200E1C3
      9400BAA37600FFFCCE00FFFFC800FFF4B100FFEFAE00FFFEC600FFFBCE00C3A1
      7600D9C59500C5AC8400FEE6D0000000000000000000F4EDD900EDDEBE00FCE9
      C300F8E4BB00EFDEB700F7E7C200FFF6C400FFECBC00FBE6B900F8E4BB00EEDC
      B700E5D4B300E9DCBC00FBEDD0000000000000000000F1F1F10E494CA5B9050A
      C3FF1017C4FF4D51DFFDA9ABD279FCFCFC03000000000000000000000000DDDE
      ED306164D3C84B4EAABCCDCDCE32FEFEFE010000000000000000235A330084CC
      A200ACFFDD0098FED50091ECD30082E1C60078E3C20079ECC40092FFD100A7FF
      DF0075D69E001167310000000000000000000000000000000000000000000000
      0000D3B78E00FFFBCA00FFEBBF00CEA48100C4A48000FFEEC000FFFECC00D4B8
      8F00000000000000000000000000000000000000000000000000FFF6E000EADC
      C000F9EBCE00FFFFE100E8DCC000FFF4CA00F8E4BB00F5E3BE00FFF5D500F5E9
      CD00DCD4BD00F0E9D600000000000000000000000000FBFBFB047F82D4A55459
      D9FF6B6FDDEBBEBFD95A00000000000000000000000000000000000000000000
      0000F4F4F50C9194D8916366BCB0E7E8EF18000000000000000000000000557F
      60005DA0790088D7B0009BF4EB00ABFEFC00A8FFF100A9FEE80097E4C8004886
      6200547F5A000000000000000000000000000000000000000000000000000000
      0000F6E4C700D9B99600C8A689000000000000000000C4A88A00D4BC9800F3E5
      C80000000000000000000000000000000000000000000000000000000000F9F1
      E0000000000000000000DFD8C500F0DEBF00E6D6B900ECDFC500000000000000
      0000FAF6EB000000000000000000000000000000000000000000F6F6FA0CE2E2
      F942EAEAFA290000000000000000000000000000000000000000000000000000
      000000000000FDFDFD02D9DAF638EEEFFB140000000000000000000000000000
      0000A3CCB1006A9B7F00307E370037813F003A80430035733D0066926B00C3DF
      C100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7B0BF00998B8C0087766D00B0A69F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009FDE960055B63000309B08002CA10400289A0700409C2B0091CC8800D9F3
      D500000000000000000000000000CFF1C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000858585007777
      77006B6C68006B6C68006B6C68006B6C68006B6C68006B6C68006B6C68006B6C
      6800767676008686860000000000000000000000000000000000000000000000
      000000000000B8A89800E48C5000CE773700B2622500995F2E008F7154000000
      0000000000000000000000000000000000000000000000000000000000003AA4
      220029C70F001FF100001FEC00001CE206001FE0070039EC130031C60A0035A3
      1F0083D582000000000070C17C003A922800E4EAF8008085D8004460CB0064AF
      EC00A4EBF8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000077777700A9A9
      A900AAABA700AAABA700AAABA700AAABA700AAABA700AAABA700AAABA700AAAB
      A700A7A7A7007878780000000000000000000000000000000000000000000000
      0000D5B89300AD7B3900C9820900DD942200B6680000BA690E00B26A24009D6A
      4200000000000000000000000000000000000000000000000000349F1A0027D4
      06000EE7000008E4000010E40F001CE5200017DA0E0023E407003DF6140036E1
      0F002AC90D001290080020B323003AC1190000000000B7CFFF00669DFC0052BD
      FA0071CDE900F1E9E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000827D7E00C9C4
      C500008C3800318555003F8E5500A1C5AF0097BBA500287940001C7544000086
      3100D3CECF007F7A7B000000000000000000000000000000000000000000ADA2
      9E00B3884F00DE942E00D9A43500CC932A00BF791400CB771100C8710F00A766
      1C008A71510000000000000000000000000000000000258C13001CC4060014E0
      000017EB00003BE60E002ECB050039C619005BDC3D006FF2550065F74B004FF1
      340043F128003ED734004CF74F0041D319000000000000000000CDEBEF00AFDF
      E900A1C2C900A9939100E3DEE100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCACB009F9A9B00E9E4
      E500008741005AAF7B00D3E3D200D3E1DD00D2E0DC00D0E2D1005BB580000593
      4C00E1DCDD009D989900E4DFE000000000000000000000000000AF968C00CB9B
      6B00CD993F00D9A83C00CDA24B00D68F3800D87A1600C3761500BC792A00C969
      1500BA661E00968165000000000000000000A0DF950010A606000EDB020011DF
      000026E10F0055B318008ACF680000000000000000007EBC6A006ACE51007AFD
      700058EB610060F3630064FF740043CE1F000000000000000000000000000000
      0000DAE1EB00D7B3BC00A68B8A00D5C6BE000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A2A300CAC5C600F7F2
      F30081DAAE0025A06800E8DCE800EBEEF200ECEFF300E5DBE7001D9C640074D3
      A600F4EFF000C9C4C500BDB8B9000000000000000000C1BDBC00CAAD8100D49B
      5000E4A44600E5AA3C00C9923700C0945900B57D3C00B86E1600CD7D2400DB81
      2800BC7024008D694100BFB5AE00000000003C8E250000C4000010D301001AEE
      0B004EC203000000000000000000000000000000000062B6500074EB530077FE
      620068F86A0079F27F008DFF9C004DDB3A000000000000000000000000000000
      000000000000F4E2D800D0B9B3007F6F6E00B5B7C00000000000000000000000
      000000000000000000000000000000000000000000008C878800F0EBEC00FBF6
      F700EFFFF200E3FFE800F0F5F400FFFDF500FFFEF600EEF4F300D9FCE200E0F7
      E800FFFCFD00EEE9EA009A9596000000000000000000B19E9900E0BE6B00E9AF
      4600FAB15D00E0A23E00EEB46200FFF7DC00F8E9CF00DA975200CD761E00CF81
      2400C77F2B00B27438008E8179000000000075A351003BC1290038B51F001FB2
      14008DD35E000000000000000000000000005BA9560053C8610078EE89007EEC
      930099FFB50099FF9600A5FFBB005AE73E000000000000000000000000000000
      00000000000000000000DDDEE000BEB4C5009C8F9500D2CABF00000000000000
      000000000000000000000000000000000000000000007A757600FFFCFD00FFFD
      FE00FBF9F900FFFEFF000DA46C00B6EAC200B4E9C10008A16900FFFFFF00F6F8
      F800FFFBFC00FDF8F900898485000000000000000000C7ACA800C9A94500EBB7
      4C00EDAD7300CC9B5700D1A97900F8FFF600EEEEDC00BD885500AA652000BD7D
      2500CB842200C573250089797200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFEFBE00A8E5
      950065C763005BD577007DE8A90078F167000000000000000000000000000000
      00000000000000000000D7DAEA00D8CAD800DEB89100A97A3000D9BE90000000
      00000000000000000000000000000000000000000000837E7F00F8F3F400F5F0
      F100FFEDF600EFE4EE003BB3730057BB810051B77D0030AA6A00E4DCE600FFEA
      F200F2EDEE00F3EEEF008D8889000000000000000000D9C1C100BEA74B00E3BF
      6700EEC2A500EBD4B400E6D8D200FDFFF800F0E6C400DAB38C00D8AF8800DCAA
      5E00DA902600CC751F008F7C740000000000A7753B00E9C25F00EDB56800C1B2
      6900E0BF9E00D7D6C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7B6B400C1924F00D5962800C28337000000
      000000000000000000000000000000000000000000009C979800DFDADB00DAD5
      D600CCDBDD00D1DCD900DCE2C90006925D0003915C00D8E1C700CFDEDA00CBDF
      E000DED9DA00DDD8D9009C9798000000000000000000E0CFCC00DBC58400E8C9
      8C00F5D9C800FFFFF100F6F8FF00FFFFF100FFEDC000FFF1C900FFEDD200DEB4
      7300CC832100C07725008F7A720000000000AB5D1B00F4A03600FFAA5400FFCF
      7F00FFD0A300FFD39C00E7A17200D1987E00000000000000000000000000BD88
      3700FFBC3900F9A94A00D9BE4B00F0A44A000000000000000000000000000000
      000000000000000000000000000000000000C9B17F00E3B14C00EAA54000DB87
      3A000000000000000000000000000000000000000000A8A3A400CBC6C700CEC9
      CA00E5C3CA00BDD6C200CCC1C900BFCEC000BECFC100CCC4CB00BAD6C200DCC0
      C600D0CBCC00CBC6C700A9A4A5000000000000000000DED2C600EBCEA700F4CF
      A300ECD0B100F5EDCF00F8F0E300FFFCF300FFEBCB00FFEDBE00F2E3BC00E0B5
      7C00DC9A4B00C7935000A38C840000000000B05B1100EA950900F69E1100DDA6
      0F00DFB53A00F5BF6800CAA1630000000000000000000000000000000000DDAC
      6E00FFE48A00FFE5AF00FFF1BA00F3BB80000000000000000000000000000000
      00000000000000000000000000000000000000000000CAB18100E1B76400E9B3
      4300D49E63000000000000000000000000001A62260007791C00007A1A000876
      2400047720000477200003761F0003761F0003761F0003761F00047720000477
      20000970250011882D00007110001969240000000000E0D8C100EDC5AC00FFE3
      BD00F1D09E00D9C89500E7D2AC00FFFCFC00F7E7DA00D1C08800C3AF7500E2B5
      7C00FFC68900E5C28A00C3AAA00000000000B9691400E79C0A00EAA21500E6AB
      2000FDC95F00F4BC6300C49562000000000000000000D59C5F00E39C4100FFD7
      7A00E9F19A00F7ECB300FFDEA700F6E8B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEBA7E00E8C8
      6C00F2B25E00D4AB840000000000000000002B7E400044C6670034C360002EB8
      600038C55E0038C55E0038C55E0039C65F0039C65F0038C55E0038C55E0038C5
      5E003CBD6C002BB7590043C86700166F2A0000000000E6D7C700DFCEA700FBE6
      AF00FFE3AA00FFDDA800E6DEC700FFFFE500F8E6C700E0C79F00E3C39200E9C3
      8900F2C88700EDC07C00B4A99B0000000000B3671400DE9F0F00D69C1400E6AE
      2B00DFA94A00E1CE6700FFD38600F6B77B00D4A86800E2CA7600F2DA7A00FFEA
      8F00F7DF8D00FFFFCC00F3B86800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5B9
      8800FACC8600DCBC6200E4D1A1000000000046A065003DC86D0047E5810041DF
      810044D18E0044D18E0045D28F0045D28F0045D28F0045D28F0044D18E0044D1
      8E0043DB820044DF7E0048D578002B8B4B0000000000E4D8CC00DFD0AF00F7E5
      B600FBE1B200FEDEB300F0D7AF00FCE3B900E5C79800DFBB8500EFC68800F5C8
      8500FBC98100F4C07400B6AB9D0000000000AC692400C7751C00AD6D2600C788
      3800FFAF3F00EAB85400EFC15600F9CF5E00FCD86600F5D87000EED98400FAE9
      AA00FFFCCB00DBC8950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5B48700F1D77900D5B76700FEEDD900438C5A002BA0510009933B000E9A
      4600208938001F8837001E8736001D8635001D8635001E8736001F8837002089
      380008913D001BA24C00249B4C003C8C570000000000E4DCD500DDD3BB00ECE0
      BE00EEDABB00F1D7BF00FDE1B800F4D7AB00DABB8E00DFBE8D00F0CB9700F0C9
      9200F2C88D00EBBF8200B3AA9D00000000008F602D00E3AB6A0000000000E2BD
      9100C58D4600F8B95700FFD27400FFDE8600F6DB8B00FCE69F00FFF5B500FFE2
      A700E3BD86000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5BB8B00F6DE8A00E3CC95000000000063AA7200075E1E000763
      2200006813000066110000630E0000610C0000610C0000630E00006611000068
      13000B6321000F652500478F5A000000000000000000E7E3E200DFDACB00E3DC
      C800E1D4C400E4D2CB00E5D7C400D6C9B300C5B7A100C7B9A300C5B7A000BDAD
      9600BCAD9300B8A98F00C1BAB10000000000F1DCC00000000000000000000000
      0000FFEAD400E6D19A00CCB37300CBAF6200E4C77200E6CB7B00D6C28100E7DA
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0CF9900C4B97C0000000000000000007EA27E005682
      5B00197723001775210014721E00116F1B00116F1B0014721E00177521001977
      2300668E640081A6800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F6BCB00302ABF001B24BB002327
      D9001D1CD8001D19C6002418CC001B0ADD002015D7001C17CE002015CF002315
      D9002B18E1002C1BDC001812BD008C7BDC000000000000000000000000000000
      00000000000000000000EAA14600CB761200C7753E0000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA05E5E5E51AD3D3
      D32CD0D0D02FAEADAC5385827F8D837F7B92807D7995908D8B77C6C6C639CDCD
      CD32CFCFCF30DCDCDC23F6F6F6090000000000000000AB7147B8A65200FFA453
      00FFA45200FFA45200FFA35200FF994700FF9B4800FFA45200FFA35200FFA452
      00FFA45200FFA65100FFAC7751AE000000003429CB002015F7001A22FF000C06
      FF001909FA004031E7006648FF008882FF007C7BFB00575DDA003332CE00110E
      DA000B06F1001A17FF001316FB00341FB8000000000000000000000000000000
      000000000000CE994200D59D1A00FF890000ED730000B8652800000000000000
      0000000000000000000000000000000000000000000000000000999692838A8A
      85C8888784C47E7A77CD93959BFD989DA6FF9BA0A7FF7F7D7ADE858380C38887
      84C97F7D79B9C2C1C13EFEFEFE010000000000000000AE5900FF996100FF9A60
      00FF935900FF8D5300FF935B00FFA47C37FFA27A35FF935A00FF8B5300FF9259
      00FF9A6100FF9A6100FFAD5601FE000000003218E0002B20FF001C26DE001D1D
      E5007C86FC00DBEEF100FFFEFD00FFFEF000FFFFF000F4FFFD00D2D9FF007C74
      FF002518E600130AED001B1CFF003219D5000000000000000000000000000000
      000000000000C59B5000FFEA6700FFAD1800F2810800AC5B1E00000000000000
      00000000000000000000000000000000000000000000000000009E9A96B0ECFF
      FFFFD0F2FCFFD1DFE4FF535E70FF556788FF475570FFB0B7BCFFD6F5FEFFE3FF
      FFFFB8BDBAEBBFBFBF40000000000000000000000000AE5F00FF9E6500FF9C5E
      00FFA87B2BFFBCA172FF8B5A00FFE7DEBBFFE3D7BBFF895600FFC2AA7EFFAA7F
      2FFF9B5E00FF9E6500FFAD5C00FF000000001C23E4001721FF00331DE800AC93
      EF00FDFFEB00E2E6FE007B85FF004558F5005D3FF200A392F300D7F2F600E9FE
      FF00A68DFD002A07E100131EFC002A22DA000000000000000000000000000000
      00000000000000000000DD975400DDA24500C280450000000000000000000000
      0000000000000000000000000000000000000000000000000000A2A09CA9D3EC
      F6FFB0D7E3FFC7D6DBFF525D71FF5A6D91FF465672FFAEB6BBFFB9DDE9FFC7E5
      F1FFB3B8B7E8C2C2C23D000000000000000000000000B56300FFA16600FF995A
      00FFC6A76CFFFFFFFFFFDBCFB5FFF8F6F0FFF8F5F0FFDFD3BCFFFEFFFFFFC4A6
      69FF975800FFA16500FFB36100FF000000001E28E700111DF100858CDC00F0FE
      FD00BBC2FB005A49E000241AD2004746C4006046E6002A10D200444AD300B8CD
      ED00F9FFF3007F8CCA001021E2002924DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A4A1A4D8EE
      F8FFB8DBE6FFC9D7DCFF586275FF5D7092FF4C5C77FFB1B7BDFFBFE0EAFFCEE9
      F3FFB8BBBAE5C7C6C639000000000000000000000000B96700FFA66F00FFA87D
      1EFFA88137FFF6F3EBFFFFFFFFFFFEFDFAFFFEFDF9FFFFFFFFFFF7F3EDFFAB85
      3BFFAD8532FFA97107FFB86300FF000000002025DE003136FD00E0EEFF00DBF1
      FC004347FD001B13F4004242E200EBEEFD00E2F5FD00333CDF00090DF800504F
      E100F3F3FF00DCEEF5002224EE002B26D5000000000000000000000000000000
      000000000000F6D8AF00EBA63F00F3A54100E1AC4B00E2D49F00000000000000
      0000000000000000000000000000000000000000000000000000A9A7A4A1DCF2
      FAFFBDDFE8FFD3DFE3FF6F7788FF5C6B86FF5B697FFFC3C7CCFFC4E2ECFFD1EB
      F6FFB8BFBEE2CCCBCB3400000000FEFEFE0100000000BC6700FFBC8E32FFF8F6
      EDFFF8F6F2FFFFFFFFFFEFE4D1FFC69938FFC49531FFECDEC7FFFFFFFFFFFDFC
      FAFFF9F7F0FFBE8F34FFBC6400FF000000001E23DC006063FF00FAFCFD009295
      EA000310FE001628FF005369CF00FEFDFF00F0FEDA00495DDA000E1FFE000B09
      EB00998DED00F3FFF8005D5CE2002F2ED8000000000000000000000000000000
      000000000000FFD58F00E3A31C00FFC31C00F6AC2800E5A44800000000000000
      000000000000000000000000000000000000F6F6F609CDCDCD32A0A09DADE1F4
      FBFFC6E2EAFFD8E8EDFFD4D8DDFFB8BEC8FFC7CBD3FFE2ECF0FFC6E1EAFFD8F0
      F8FFBDC5C5E0A9A8A659CDCDCD32F9F9F90600000000C67100FFB97E0EFFC9A3
      49FFF9F6ECFFFFFFFFFFC49A49FFB46D00FFB46E00FFC19437FFFFFFFEFFF9F6
      F1FFC29943FFB87C08FFC56F00FF000000003F40F6008FA5ED00FFFFF9007D74
      F3000E2DFE001131FC004C56D900FFF8FF00FDFFEC00534FEA001B30FE001730
      F8006968E000F7FFF300A49EED003D3CE0000000000000000000000000000000
      000000000000FFD69B00D3934500F1C24F00FFC55300EF963400F5D9BB000000
      000000000000000000000000000000000000BCBCBC4F1D1D1CFF5E6364FCCBDC
      E2FFD3E8EFFFCDE5EDFFCDE8F1FFD0EBF3FFCEEAF2FFCCE4EDFFCFE5EDFFE3F5
      FCFFA2B2B5FD0B0D0DFF5C5B5BB80000000000000000CD7800FFB97E0AFFBD96
      42FFF6F3EBFFFFFFFFFFC0994BFFAD6A00FFAE6B00FFBD933AFFFFFFFEFFFCFC
      F9FFC7A862FFB9800FFFCC7300FF00000000575FEE00ACC5E500FFF8FD007C6F
      F3001B3CE6002134E9005553EC00FEFDFF00FBFFF4005E51DD001933DD002744
      E2006F6CE700F3F5FF00B9AAFB004F54ED000000000000000000000000000000
      00000000000000000000CE904200FCEBB200FFC93B00FFC14500E89F2500FBDC
      C50000000000000000000000000000000000EAEAEA164D4D4DD3313232FF7680
      84FFCEDDE2FFDCEFF6FF90ADBAFF506474FF718A9AFFCCE4ECFFE7F7FDFFBCC8
      CDFF222325FF302E2DFDB3B3B25A0000000000000000D27A00FFCD9A2EFFF9F5
      EAFFFEFDF9FFFFFFFFFFEEE4D3FFC09948FFBE9643FFEBDFCBFFFFFFFFFFFAF6
      EEFFFCFAF3FFD09F38FFD07500FF000000006473DA00A1AAED00FFF4FF00B7B6
      FF005F72F300636FFD00778AF300FEF5FF00FBFFFC008584F2005572F8005872
      DE00BBB2F500F8FEF9009096E3006465FD000000000000000000000000000000
      0000000000000000000000000000D2994300FFF8D300EDCC6B00ECDF7D00DABA
      7800E6D6A80000000000000000000000000000000000E6E6E619535252CD3939
      38FF848E91FFDBE9EEFF8698A6FF192335FF506272FFE1F3FAFFC5D2D5FF292A
      2AFF191817F7AEADAD5C000000000000000000000000DB8200FFD09000FFD7A2
      26FFCD9C36FFF6F1E7FFFFFFFFFFFEFEFDFFFEFEFCFFFFFFFFFFFAF8F6FFCD9E
      3EFFD39B12FFD19000FFD97F00FF000000008183F3008F81FE00FFF8FF00E7FE
      F6008C95EF008586FF0089A6E300FFF6F600F8FEEB008996F2006D85FD008894
      E200FEF3FB00F9FFF300757AFE006D6DFF000000000000000000000000000000
      000000000000000000000000000000000000E1AC7300FFE28300FFF19400EDC7
      6700D8C280000000000000000000000000000000000000000000E6E6E6195655
      54D24B4B4CFF969D9FFFABBDC5FF90A1ADFFAABFCAFFC4D4D9FF404344FF3B3E
      41FF5A5B5CBAFDFDFD02000000000000000000000000E28900FFD58F00FFD085
      00FFDDB45DFFFDFEFFFFF0DFBAFFFAF5EAFFFCFAF5FFEEDBB2FFFEFEFFFFE2C2
      7BFFD08600FFD58E00FFDF8500FF000000007B7AFA007CA1F3009ABAFC00E6F1
      FF00E5E8FD00AA93FB008F87EB00819CED008D8DFF008673F800A193EB00E5E9
      FC00E7FEFA00A6BDED007986F2007A73FC00000000000000000000000000DCA9
      6000E7C87300CAC580000000000000000000D2B96900FFE37600F6D98800FFDF
      7F00DCBD8000000000000000000000000000000000000000000000000000E5E5
      E51A5F5C5CCD5A5A5AFF9FA8ABFFF3FAFDFFDAE7E9FF4F5254FF3F4042FFC2CA
      CFFF646565BAFAFAFA05000000000000000000000000E88D00FFDC9400FFDB90
      00FFE1A526FFECC97DFFD79000FFF3E0B7FFF7EDD0FFD89507FFE9BD66FFE3A8
      2FFFDB9000FFDC9300FFE58A00FF000000008B85EA008AA7EA008499EE00C4C5
      FF00F2FFF100E6E5FF00BFC7EC009F9FEB00A9AAE200C4CAE700F1F3FE00F0F3
      FF00B7BDF2008A90E9008692FE007C75FB00000000000000000000000000FFB1
      6300FFFECF00FFE89F00FDD37000FCE38700F4D29C00FFDB9B00FFE49B00FFD7
      8300DBB182000000000000000000000000000000000000000000000000000000
      0000E6E6E6195D5C5BD2737272FF9AA0A3FF7E8282FF4F4C4AFB606062FEE6EB
      EFFF646565B8FDFDFD02000000000000000000000000EF9700FFE39F00FFE29C
      00FFE29A00FFE09700FFE29A00FFE9B339FFEAB842FFE29C00FFE19700FFE29A
      00FFE29C00FFE29E00FFF09500FF00000000908CE50094A9FB008696FF008D94
      EB00BFCFDB00E8F4FF00E4FBFD00F5F7FF00EFFBFD00EEFFF200DFF2FA00B7BD
      F8008C92F1008095F0008DABFA00847BF300000000000000000000000000E8E5
      D000FDF4D300FDEEBD00FDE7A500FFECA200FFE79F00FAE7A400FFF9BB00D6B0
      8000F4D8B5000000000000000000000000000000000000000000000000000000
      000000000000E5E5E51A686766CB797A79FF767473EFACABAB5D68696BB86469
      6EE78787868700000000000000000000000000000000E9A03CC3E79D00FFE79F
      00FFE79E00FFE69D00FFE79E00FFE59A00FFE49800FFE69E00FFE69E00FFE69E
      00FFE69F00FFEA9E00FFDB9E49B6000000007F7BEC008392FF008AA8FF00899C
      FF00919CF80097A2FE0097AAED00C6C5FD00BFC7FC00B1BEF60091A2EB008193
      F200859EFE0088A9FF007EA3F5008A86DF000000000000000000000000000000
      0000F3D7C600FFDEBC00FFECBB00FFE1A700FFE8B100FFE8B600E4C19500FADE
      BB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEEEEE13D9D9D84BE3E3E32A00000000F5F5F50AE4E4
      E41DFCFCFC030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A59AFF008089F1007487E8007785
      F5008487FA008A83FC008084ED008873F2008B7BF8008781F2007E84EF00858B
      EE008992FA008589FA007D7AF800B6B1EF000000000000000000000000000000
      000000000000F5E3A600E0C97E00E6CD7D00E2CB7D00DEC88000F1DC98000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F18FEC37FFFFF00FF00FC0038000E007
      800180018000C003800180018001800180018001E0E300008001C003E0C30000
      01800180F007000003C003C0F80F000003C003C0FC0E000001800180FC1E0000
      8001C003F006000080018001C00300008001800180C180018001800180E0C003
      F00FC00383F0E007F18FEC37C7F8F00FFC3FF00EFFFFC003F81FE00407FFC003
      F00FC00083FFC003E0078000C1FF8001C0030180F0FF800180010780F87F8001
      80010700FC3F80018001FFC0FC1F8001800103FFFE1F8001800100E0FF0F8001
      800101E0FF87000080010180FFC3000080010001FFE1000080010003FFF00000
      80012007FFF880018001700FFFFCC003FFFFFFFF0000FC7F800180010000F83F
      C00180010000F83FC00380010000FC7FC00380010000FFFFC00380010000F83F
      C00280010000F83F000080010000F81F000180010000FC0F000180010000FE07
      800380010000FF07C00380010000E307E00380010000E007F00380010000E007
      F80780010000F00FFC47FFFF0000F81F00000000000000000000000000000000
      000000000000}
  end
  object ILPage: TImageList
    Left = 24
    Top = 224
    Bitmap = {
      494C010104000800A00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDB78900C7A67A000000000000000000000000000000000000000000F4DA
      C400F3CAA9000000000000000000000000009BD3F60028A8D9002FB3E8003EAE
      EA0045A8EC0023A9E90027ABEB002F91D7002E9EE0002CAAE500219CD6002B96
      D3002E8AD3002E8AD9003084CC007FA6DD0000000000A4A4A4009F9F9F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BC976500AE7D3900996A2C00FEDFC000000000000000000000000000F7E6
      C700E4B16E00E19A3E00EFCDA900000000000000000000000000FBF6DD00C292
      4900B06B1B00F5EAC30000000000000000005EB0DA007CEEFF005BE1FF004AD2
      FC004AD1FF0024E3FF0023E0FF00259FC70021B0CC0029CCFF002ECBFD0039C4
      FC0038B9FE0028ABFA002EA7EC003E7FAB0000000000B3B3B300A0A0A000B8B8
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B28F
      5700DCA34600FFC14C00F1AF46009F7333000000000000000000EFDDBA00CF94
      3500E5BC3400E9AE3000F2D5AA00000000000000000000000000D1A27F00D394
      2300DD8C1900F9EDCD0000000000000000005FB0E30057E8EA003BDBE70038D1
      F00051CBF90040D6FA0044A9C2002E1029001D00070019B2EF0029BCF4002BB0
      EC0026ADF70013AAFE0016A9ED00267EA60000000000D4D4D400B6B6B6006B6B
      6B00C3C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BB944F00E0AF
      5300FDBF4900FFC33E00FBBE4600AD812E0000000000E9D7AD00C4822D00DD9A
      3A00F39B3300C8965C0000000000000000000000000000000000D9935F00E4A8
      2B00CD871400F2EACD00000000000000000082C6FF0077D3F00057D1F50044CE
      FF0042BFFC002BD6FF0044C4DB004334420042322B0017B3EE0031C2F90034B4
      EF002DAAF50024ADFF001896DD006EA6CF000000000000000000CFCFCF009F9F
      9F0064646400EAD3CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDA55600E5A94500DA9D
      4000ECAC5400E0984400AA661900CEA26D00C8B09400D18B1200DEAD3E00E6B7
      4600F1B84400D3942D00C49559000000000000000000C8A57600E9953100EEC0
      4600B08C3A00EFEBD2000000000000000000000000003AA4E30065E3FB0038C9
      F70053CFF70025D3F70030E0F100326B9E002387890033BFFA0034C4FB0019B1
      E70024B7F50034A9EE003B7EB50000000000000000000000000000000000E1E1
      E10080808000898E8F00DFD9DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDB66C00D0934F00D3913800DA94
      3900CB832B00A8681A00D0A26C0000000000D2C0AA00E2CA7400E8C67E00CEA6
      6D00CDA66100FFD66D00DC9C3400C8A07300E8D0B600D0A96900EABF5C00E6B3
      4F00E4B87E0000000000000000000000000000000000A2D7FF0054B6E4005DE3
      FB002ACBF70043E1FF0043D4FA002E001A001F00090027CBFF0037CAFF0025B5
      EF002EC2FE002490CA009BC0EC00000000000000000000000000000000000000
      0000B8B8B8004F5365009CB0A400E9E2D3000000000000000000E6DAC200C396
      6B00F5D09E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBAB6900D78F3B00BF7D2C00C77C2E00C87A
      2700AB661600CFA06800000000000000000000000000EFDCC200E9DDD7000000
      0000D3AE8000E4B76600F9D27400DDB44500BC7D2200DAA75800F6E27F00E5A9
      6000EECEAF00000000000000000000000000000000000000000081B9EA0063D7
      E80029D2F20034E1FF0034DDFC002C1610003315140015CCF6002DC2FA0032B7
      FA0023AAE2004A9CC60000000000000000000000000000000000000000000000
      000000000000C5C6D00061564E00C7C6C20000000000D9B59D00B7791F00D18E
      1B00C6802300EBD6BA0000000000000000000000000000000000000000000000
      00000000000000000000D1C4BC00DAB271008F440000BF731300B8631900B166
      2200E1AC79000000000000000000000000000000000000000000000000000000
      000000000000D4B49500E5BD7B00FDDC6E00E4B94C00C9943600F1CA6E00E8A2
      6900000000000000000000000000000000000000000000000000D1F1FF007DCB
      EF008AE1FB004FD5FF005DDDE8002C1D1B003025070026CFF50032C3FA0042BD
      FD002F8DC200ADD8F30000000000000000000000000000000000000000000000
      00000000000000000000ADA2AC0080706300AF7C4400CD781500D4870900E4A0
      1700F1981100D6BD9300FFF8DE0000000000000000000000000000000000C5BB
      B400CDB9C600B8A79E00CABDB500FFEBED00E0B5760094420000AF5D1600E7AC
      7E00000000000000000000000000000000000000000000000000000000000000
      000000000000E8D4AD00C1934000EDBD6100F4D87700E6BC5800DD953F00E7A3
      6A0000000000000000000000000000000000000000000000000000000000A6D5
      F5009DD0F8006FE5FF0088FFFF00392231002F28010057DBFF0051D9FF0050B8
      ED0084B0D9000000000000000000000000000000000000000000000000000000
      00000000000000000000CABDA300A6630E00E77C0300EB980D00E8A01300E396
      1800FFC75600FFE0AB00EEDBB800FDFAEC0000000000ADA5A600A792A100DECD
      DA00E0C8D000F1D5CE00DDD1D700D3D1E700F5DDC900EAAB6700E3AC79000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6B98C00E0C36B00DFC46100DAA73E00DDBC5700FADD8100F2B55F00D4A4
      5F00F7EEC8000000000000000000000000000000000000000000000000000000
      000076C2F30072EEF40060F3FF00724E66005B4A370070D9FF006EDFFF0069B3
      D500000000000000000000000000000000000000000000000000000000000000
      000000000000E9D3C700B96D1B00ED9C1300E0991300FDA92C00EDAB2A00F0CE
      6A00F4CA9B00FFE0A100F1DBB100F0EAD700CABFC100C5B8BA00FFFAFD00FFED
      FF00FAEFE100FAEBF300D0C8D900BDBEBC00BAA4B000E3C5A800000000000000
      00000000000000000000000000000000000000000000FEE9CA00DFC08B00E6C0
      7300E4BC6400F7D58100FFE19400F6D28800D5B26600E7CB7600FFE78800DFCC
      7200E1AB77000000000000000000000000000000000000000000000000000000
      0000BBDBFE008DD5E6005AC7E700AF7997009271800068CEFE0070CAE900A8D2
      DF00000000000000000000000000000000000000000000000000000000000000
      000000000000DD7C0E00D99A2800DBA32C00EDAC3200E4AF3700F0C86800DBB9
      8300F1D6C100C19C5800FFF3C500F8F3DE00A79A9C00FFFDFF00B2B5B900EFEB
      D800FAF3F600E8EFF800F8F8FE00ECD7D900D1C0B30000000000000000000000
      000000000000000000000000000000000000DCC8AE00EDCB7E00F3DB8500FFED
      9300FFEB9C00FBDD9800E8CA8900DCC08500D9BE8800D4B67100F2DE9400F6E6
      9B00F5C56D00DFB8730000000000000000000000000000000000000000000000
      0000000000007DBDED0060E5F30086C3D7006ED5E4005DCFFE006FB7CF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CF7D2400EEA93C00DDA72B00E5B84F00F0CA8900E3C8A600FFFF
      E900EFF0D000CDC09A00FEF0D400FFF0E300D2C5C700DACDCF00C0B8B9009C94
      9500FDF5F600FFFEFF00FBF5F600FFFEFF00BAB5B60000000000000000000000
      000000000000000000000000000000000000DFC9AB00DFC58500ECD79B00DAC9
      9100D2BE8A00E3D09F00F4E8B900F3EFC7000000000000000000D4C8A800F1D8
      9600FFEA9600F6CE7D00D6BF8B00000000000000000000000000000000000000
      000000000000CEEBF4008DCDE50076DBFF0068E5FF0082B9D400C7E6FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBC38C00E6B76600FDD67300FFF59800FCDA9E00FFFBD800E0D0
      B300DAD4B100F9F1D400FFFFF00000000000A69B9D00BFB2B400000000000000
      0000AAA4A500F4EEEF00FFFEFF00FCF7F800BAB5B60000000000000000000000
      00000000000000000000000000000000000000000000FAF7DF00FAF7E200F6F2
      DE00F5F1DF00000000000000000000000000000000000000000000000000D8C2
      9700F5E0A200FFF3AA00DBBF7B00000000000000000000000000000000000000
      00000000000000000000B0DAED0089CFED006DC5ED00ACD6E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECD9B300FFFFC200F4DE9700F6DBA800E4CBAB00FCEB
      D000FFFFE300FFFFF0000000000000000000E5DDDE0000000000000000000000
      0000B2ACAD00F3EDEE00FCF7F800D0CBCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3CD9D00E9CE9400D7CCA600000000000000000000000000000000000000
      0000000000000000000000000000C1DEF300ABD2EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCD9B300FBF1C200F5E5C000FFF8E100FFF8
      E700FFFDEB00000000000000000000000000000000000000000000000000B7B1
      B200F9F3F400FFFEFF00FAF5F600B9B7B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F3D500FBF7DF00F7F2E9000000
      0000000000000000000000000000000000000000000000000000D5CFD000C4BE
      BF00E8E3E400BAB5B600D0CECE00000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F3E700009FFFFFF0E1C300008FFFFFE0
      C1C3000087FFFFC083C30000C3FFFF8001838001E1FFFF0100078001F0C7FE03
      9007C003F883FC07F80FC003FC01E00FF80FE007FC00801FF007F00FF800003F
      8007F00FF800007F0003F81FF800007F00C1F81FF801307F87E1FC3FFC0370FF
      FFF1FE7FFE07E0FFFFFFFFFFFF1FC1FF00000000000000000000000000000000
      000000000000}
  end
  object XPManifest: TXPManifest
    Left = 24
    Top = 280
  end
  object TimerCheckRegOnStart: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerCheckRegOnStartTimer
    Left = 72
    Top = 328
  end
  object TimerInformera: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = TimerInformeraTimer
    Left = 128
    Top = 280
  end
  object TimerStartCheckNewVer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TimerStartCheckNewVerTimer
    Left = 72
    Top = 376
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoInProcessAuth, hoKeepOrigProtocol, hoForceEncodeParams]
    Left = 72
    Top = 176
  end
  object ILBigIcons: TImageList
    Height = 32
    Width = 32
    Left = 72
    Top = 424
    Bitmap = {
      494C010101001C00380020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F20DCCD0
      D234D4D7D82BB5BDC353D0D2D432000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E5E61B70AFC9BB58C9
      F2F85AB7E2EF62B5F0FBADB4BA5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8076FAECCBF62D8FFFF62C8
      F6FF5FC1F7FF50AFF4FFB2B8BE52000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F40B5FB8E8EA5FC1F8FF5CC1
      F2FF4EB1EFFF48A1EDFFAFB6BC55000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2E3E41D91A7BD82829CB8945BA9E5F25EC8F5FF51B4
      EFFF4798E9FF4BACF9FFB1B8BD56000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F807648DC9C24A94FFFF519EFAFF58C3F2FF57BDF1FF56A4
      ECFF5DC8FFFF70A9CAC6E8E9E917000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F807C5C9CD3D4580EAFA4B8BEFFF56BEF1FF56BCF1FF569EEBFF60CB
      FFFF70B1D0CDE2E3E31E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E6
      E71A6691C9BF4B85E5EF478AEBFF51B9F1FF53B6F1FF5295EBFF5CC8FEFF76AF
      C9C1E7E8E8180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E7E719579B
      CEC9319DFFFF3397F2FF39B9F1FF3AB4F1FF3A90EAFF43BFFFFF65ADCDCAE9E9
      EA16000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E9E9175D9ECAC02FA4
      FFFF2E97EFFF33B1F0FF35ACEFFF368CE9FF3EB4FBFF62A9CCC9E0E1E2200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E5E61B5BA3CFC830A9FFFF2E99
      EDFF31A8EEFF33A2EDFF3587E7FF3BAAF9FF66A2C6C2EAEAEB15000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E4E41CCACCCD3BC1C4C547C9CA
      CB3DE1E1E11F0000000000000000E7E8E8185CA7CFC833B1FFFF2F9CEDFF2E9F
      ECFF309BEBFF3287E6FF38A1F8FF5B9CCCCEE7E8E81800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8BEC25186A6BCA876B6DDE67BC9F6FD7FD0FBFF87D4
      F7FD8AC2E0E77CA4B9B282A7B88C5CA3C6C434B8FFFF2FA0ECFF2E9AEBFF2F95
      E9FF3188E4FF3698F6FF5F98C6C4E1E2E21F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F00F82A2B9A563BEFCFF67C8FFFF6BCBFEFF6ECFFBFF75D6FCFF7ADA
      FEFF86DAFFFF71D4FFFF46C8FFFF33B4F6FF2EA2E9FF2D9AEAFF2E93E8FF308A
      E4FF3392F4FF5F93C5C2E9E9EA16000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F10E739FC1BB58BDFFFF56BAF9FF59C1F4FF57C9F6FF59CEF7FF5BD3F9FF5ED9
      FAFF68D8FBFF7DD7FBFF73CCF9FF44B4F1FF30A0EBFE2D96E7FE2F8EE3FF3292
      F4FF548ECACFE4E5E61B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD027C9F
      B9A851B8FFFF4FAFF3FF59B9EEFF57C9F9FF5BCAF5FF53C9F5FF58D0F7FF5BD6
      F9FF5CD2F9FF5ED0FAFF6FD7FBFF72CBF8FF47AEF0FF3599E5FC3198F4FF5C91
      C4C2E4E5E61B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8BFC45059B8
      FCFF4EB5FFFF869FB290BAC0C45175CFF0F57BE7FFFF6ED6F7FF51CBF6FF57D4
      F8FF5BCFF8FF5DCBF8FF5DD0F9FF6FD6FBFF74C8F8FF4CB1F7FF6197C4BDEAEA
      EB15000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EA5C0AF58C2
      FFFF5B9BCBDBECECEC1300000000BFC5C94B7FDBF2F48FF4FFFF7FDDF9FF51D0
      F6FF56CBF6FF5AC6F6FF5DCBF8FF5DD0F9FF7BD4FBFF79D0FFFF93A6B2940000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E71A6FB8E5EE55BC
      FFFF96A5B179000000000000000000000000BEC4C84E88E6F3F59DFDFFFF8AE3
      FAFF50C5F4FF56C0F4FF5AC7F6FF5ACAF7FF69D1F9FF85D7FFFF82AEC9CEF3F3
      F30C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDD0D1386EC7FCFF51B3
      F3FFC0C3C64300000000000000000000000000000000BFC5C84D90ECF5F5A1FF
      FFFF87D6F7FF50BAF2FF56C1F4FF59C6F6FF5FCCF7FF78CFFEFF7FBAE1EBDEDE
      DF22000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C9CC416FCEFFFF53B1
      E9FDCBCCCE370000000000000000000000000000000000000000C1C6C94C8CEC
      F5F590F1FFFF77CAF5FF50B9F2FF55C0F4FF59C6F6FF6DC8FCFF7DBBE6F2D8D9
      D929000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDD0D1397CD4FFFF5AC1
      F7FFBBBFC14A000000000000000000000000000000000000000000000000BEC5
      C84F81DFF4F67BDDFDFF63C1F2FF51B9F2FF58C1F4FF6AC5FEFF72ADD8E2E7E7
      E718000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E4E51D87CEEEF163D5
      FFFF8CA1AC890000000000000000000000000000000000000000000000000000
      0000BEC4C84E77CDEEF367CEFBFF52B8F0FF56BCF2FF66C2FFFF79A1BEBCFCFC
      FC03000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000091B7C7B27BE6
      FFFF5CB0D5E6DFDFDF2100000000000000000000000000000000000000000000
      000000000000BFC5C94B6EC1ECF04FB6F2FF55B4F2FF5FBCFFFF9BAAB5790000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BAC1C55790EB
      FFFF65DDFFFF7D9FAD9FF9F9F906000000000000000000000000000000000000
      00000000000000000000A9B3BA6854B2F4FE51B2FDFF60A4DBE8E1E1E21F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB0497BC
      C9B08CF1FFFF60D8FEFF7BA3B1A7D2D2D3300000000000000000000000000000
      0000FCFCFC03B9BEC24E659CC9D04EADFAFF52ADF7FFA9B3BB62000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEEF
      EF1195C4D2C18EF4FFFF69E7FFFF5FC6E5F27DA6B3AB9AABB376A5B2B76693AB
      B2836FA0BDC052A6EFFF53B5FFFF57B1F8FF9FADB87100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F10F9BBFC8A392F1FFFF82F5FFFF6EEFFFFF61E5FFFF5CE2FFFF5EE9
      FFFF61D5FFFF65C0FFFF6CAFE1E5ADB7BE600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C5CCCD469CBEC5978BD1E1D488E0F3F383E0F5F77CD6
      EBE882B5CCBBA1B0BC78E4E5E51C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F708E0E1E221DCDDDE26E9E9
      EA17000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFFFFC1000000000000000000000000FFFFFF81000000000000000000000000
      FFFFFF01000000000000000000000000FFFFFF01000000000000000000000000
      FFFFFC01000000000000000000000000FFFFF801000000000000000000000000
      FFFFF003000000000000000000000000FFFFE007000000000000000000000000
      FFFFC00F000000000000000000000000FFFF801F000000000000000000000000
      FFFF003F000000000000000000000000FF06007F000000000000000000000000
      FC0000FF000000000000000000000000F00001FF000000000000000000000000
      E00003FF000000000000000000000000C00007FF000000000000000000000000
      C0000FFF000000000000000000000000C2001FFF000000000000000000000000
      87000FFF00000000000000000000000087800FFF000000000000000000000000
      87C00FFF00000000000000000000000087E00FFF000000000000000000000000
      87F00FFF000000000000000000000000C3F81FFF000000000000000000000000
      C1FC1FFF000000000000000000000000C0F03FFF000000000000000000000000
      E0007FFF000000000000000000000000F000FFFF000000000000000000000000
      FC01FFFF000000000000000000000000FF0FFFFF000000000000000000000000
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
