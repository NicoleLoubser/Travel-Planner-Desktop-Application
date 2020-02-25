unit LoginSignup_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

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
    pnlSLogin: TPanel;
    pnlSignup: TPanel;
    imgSBackground: TImage;
    procedure FormShow(Sender: TObject);
    procedure pnlSignupClick(Sender: TObject);
    procedure pnlSLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginSignup: TfrmLoginSignup;

implementation

{$R *.dfm}

procedure TfrmLoginSignup.FormShow(Sender: TObject);
begin
  pcLoginSignup.ActivePage := tsLogin;
end;

procedure TfrmLoginSignup.pnlSignupClick(Sender: TObject);
begin
  pcLoginSignup.ActivePage := tsSignup;
end;

procedure TfrmLoginSignup.pnlSLoginClick(Sender: TObject);
begin
  pcLoginSignup.ActivePage := tsLogin;
end;

end.
