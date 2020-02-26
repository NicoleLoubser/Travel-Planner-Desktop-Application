unit LoginSignup_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmLoginSignup = class(TForm)
    pcLoginSignup: TPageControl;
    tsLogin: TTabSheet;
    tsSignup: TTabSheet;
    edtLUsername: TEdit;
    edtLPassword: TEdit;
    lblLUsername: TLabel;
    lblLPassword: TLabel;
    cbLRemember: TCheckBox;
    lblSUsername: TLabel;
    edtSUsername: TEdit;
    edtSPassword: TEdit;
    lblSPassword: TLabel;
    cbSRemember: TCheckBox;
    edtSEmail: TEdit;
    lblSEmail: TLabel;
    edtSPhoneNo: TEdit;
    lblPhoneNo: TLabel;
    edtSRePassword: TEdit;
    lblSRePassword: TLabel;
    pnlLLogin: TPanel;
    pnlSSignUp: TPanel;
    lblDoB: TLabel;
    dtpDoB: TDateTimePicker;
    pnlSToLogin: TPanel;
    pnlLToSignup: TPanel;
    imgSBackground: TImage;
    imgLBackground: TImage;
    lblLHeading1: TLabel;
    lblLHeading2: TLabel;
    lblLTagline1: TLabel;
    lblLTagline2: TLabel;
    imgLLogo: TImage;
    lblLGuest: TLabel;
    procedure FormShow(Sender: TObject);
    procedure pnlLToSignupClick(Sender: TObject);
    procedure pnlSToLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginSignup: TfrmLoginSignup;

implementation

{$R *.dfm}

procedure TfrmLoginSignup.FormCreate(Sender: TObject);
begin
  left := (Screen.WorkAreaWidth div 2) - (frmLoginSignup.Width div 2);
  top := (Screen.WorkAreaHeight div 2) - (frmLoginSignup.Height div 2);
end;

procedure TfrmLoginSignup.FormShow(Sender: TObject);
begin
  pcLoginSignup.ActivePage := tsLogin;

  pnlLLogin.left := (pcLoginSignup.Width - pnlLLogin.Width) div 2;
  pnlLToSignup.left := (pcLoginSignup.Width - pnlLToSignup.Width) div 2;

  pnlSSignUp.left := (pcLoginSignup.Width - pnlSSignUp.Width) div 2;
  pnlSToLogin.left := (pcLoginSignup.Width - pnlSToLogin.Width) div 2;

  lblLGuest.left := (pcLoginSignup.Width - lblLGuest.Width) div 2;
end;

procedure TfrmLoginSignup.pnlLToSignupClick(Sender: TObject);
begin
  pcLoginSignup.ActivePage := tsSignup;
end;

procedure TfrmLoginSignup.pnlSToLoginClick(Sender: TObject);
begin
  pcLoginSignup.ActivePage := tsLogin;
end;

end.
