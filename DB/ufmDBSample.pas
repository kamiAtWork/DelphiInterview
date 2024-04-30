unit ufmDBSample;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Data.Win.ADODB,
  Vcl.StdCtrls;

type
  TForm55 = class(TForm)
    edLogin: TEdit;
    edPass: TEdit;
    btnLogin: TButton;
    con1: TADOConnection;
    qry1: TADOQuery;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form55: TForm55;

implementation

{$R *.dfm}

procedure TForm55.btnLoginClick(Sender: TObject);
begin
  // ToDo: 1. Всё ли нормально с запросом, возможно - что-то стоит изменить/дополнить.
  qry1.SQL.Text := Format('SELECT * FROM users WHERE user_login = %s AND user_pass = %s', [edLogin.Text, edPass.Text]);

  qry1.Open;
  try
    if not qry1.IsEmpty then
      ShowMessage('Добрый день, ' + qry1.FieldByName('user_name').AsString)
    else
      ShowMessage('Неправильный логин или пароль');
  finally
    qry1.Close;
  end;
end;

end.
