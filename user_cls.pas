unit user_cls;

interface

uses
  SysUtils, TravelRouter_dm, encryption_u;

type
  TUser = class
  private
    fFirstName: string;
    fSurname: string;
    fDoB: TDateTime;
    fGender: Char;
    fEmail: string;
    fPhoneNo: string;
    fIDNo: string;
    fPassword: string;

  public
    property FirstName: string read fFirstName write fFirstName;
    property Surname: string read fSurname write fSurname;

    constructor Create(argFirstName, argSurname, argEmail, argPhoneNo, argIDno,
      argPassword: string);
    destructor Destroy;

    function AddToDB;
  end;

const
  Key = 32515;

implementation

{ TUser }

function TUser.AddToDB;
begin
  with dmTravelRouter do
  begin
    tblUsers.Open;
    tblUsers.Append;
    tblUsers['First Name'] := fFirstName;
    tblUsers['Surname'] := fSurname;
    tblUsers['Password'] := EncryptStr(fPassword, Key);   // Uses encryption module
    tblUsers['Email'] := fEmail;
    tblUsers['Phone No'] := fPhoneNo;
    tblUsers['Birthdate'] := fDoB;
    tblUsers['IDNo'] := fIDNo;
    tblUsers['Gender'] := fGender;
    tblUsers.Post;
    tblUsers.Close;
  end;
end;

constructor TUser.Create(argFirstName, argSurname, argEmail, argPhoneNo,
  argIDno, argPassword: string);
begin
  fFirstName := argFirstName;
  fSurname := argSurname;

  if StrToInt(copy(argIDno, 1, 2)) < StrToInt(copy(DateToStr(Now), 9, 2)) then
  // Born between the start of this century and this current year
  begin
    fDoB := StrToDate(copy(argIDno, 5, 2) + '/' + copy(argIDno, 3, 2) + '/' +
      copy(DateToStr(Now), 9, 2) + copy(argIDno, 1, 2));
  end
  else
  begin
    fDoB := StrToDate(copy(argIDno, 5, 2) + '/' + copy(argIDno, 3, 2) + '/' +
      IntToStr(StrToInt(copy(DateToStr(Now), 9, 2)) - 1) + copy(argIDno, 1, 2));
  end;

  if StrToInt(copy(argIDno, 7, 4)) < 5000 then
  begin
    fGender := 'F';
  end
  else
    fGender := 'M';

  fPhoneNo := argPhoneNo;
  fIDNo := argIDno;
  fPassword := argPassword;

end;

destructor TUser.Destroy;
begin
  Free;
end;

end.