inherited frmCadastroUsuarios: TfrmCadastroUsuarios
  Caption = 'Cadastro Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcControl1: TPageControl
    inherited tsbCadastro: TTabSheet
      object lblNome: TLabel
        Left = 20
        Top = 32
        Width = 45
        Height = 16
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblLogin: TLabel
        Left = 20
        Top = 72
        Width = 36
        Height = 16
        Caption = 'Login'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSenha: TLabel
        Left = 20
        Top = 112
        Width = 41
        Height = 25
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNome: TEdit
        Left = 104
        Top = 31
        Width = 177
        Height = 21
        TabOrder = 0
      end
      object edtLogin: TEdit
        Left = 104
        Top = 71
        Width = 177
        Height = 21
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 104
        Top = 111
        Width = 177
        Height = 21
        TabOrder = 2
      end
    end
  end
end
