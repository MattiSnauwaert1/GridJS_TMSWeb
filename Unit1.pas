unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.Menus, WEBLib.StdCtrls;

type
  TForm1 = class(TWebForm)
    WebLabel1: TWebLabel;
    WebButton1: TWebButton;
    procedure WebButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.WebButton1Click(Sender: TObject);
begin
  asm
    new gridjs.Grid({
    columns: ["Name", "Email", "Phone Number"],

    data: [
      ["John", "john@example.com", "(353) 01 222 3333"],
      ["Mark", "mark@gmail.com", "(01) 22 888 4444"],
      ["Eoin", "eoin@gmail.com", "0097 22 654 00033"],
      ["Sarah", "sarahcdd@gmail.com", "+322 876 1233"],
      ["Afshin", "afshin@mail.com", "(353) 22 87 8356"]
    ],
    pagination : {
        limit : 3
    },
    search: {
        enabled: true
    },
    sort: true,
    style: {
        td: {
          border: '1px solid #000'
        },
        table: {
          'font-size': '15px'
        }
    }
  }).render(document.getElementById("wrapper"));
  end;

  WebButton1.Visible := false;
  WebLabel1.Visible := false;
end;

end.