unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, WEBLib.Menus, WEBLib.StdCtrls;

type
  TForm1 = class(TWebForm)
    WebLabel1: TWebLabel;
    WebButton1: TWebButton;
    WebButton2: TWebButton;
    WebLabel2: TWebLabel;
    procedure WebButton1Click(Sender: TObject);
    procedure WebButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.WebButton2Click(Sender: TObject);
begin
  asm
    const opts = {
      height: '30px',
      showPoint: false,
      fullWidth:true,
      chartPadding: {top: 0,right: 0,bottom: 0,left: 0},
      axisX: {showGrid: false, showLabel: false, offset: 0},
      axisY: {showGrid: false, showLabel: false, offset: 0}
  };
new gridjs.Grid({
  sort: true,
  columns: [
    'Symbol',
    'Last price',
    { 
      name: 'Difference', 
      formatter: (cell) => {
        return gridjs.h('b', { style: {
          'color': cell > 0 ? 'green' : 'red'
        }}, cell);
      
    },    
    }],
  data: [
    ['AAPL', 360.2, 20.19, [360, 363, 366, 361, 366, 350, 370]],
    ['ETSY', 102.1, 8.22, [90, 91, 92, 90, 94, 95, 99, 102]],
    ['AMZN', 2734.8, -30.01, [2779, 2786, 2792, 2780, 2750, 2765, 2740, 2734]],
    ['TSLA', 960.85, -40.91, [993, 990, 985, 983, 970, 985, 988, 960]],
  ]
}).render(document.getElementById("stockGrid"));
  end;  
  WebButton2.Visible := false;
  WebLabel2.Visible := false;
end;

procedure TForm1.WebButton1Click(Sender: TObject);
begin
//start GridJS
  asm
    new gridjs.Grid({
    columns: ['Name' , 'Email', 'Phone Number',
      { 
        name: 'Actions',
        formatter: (cell, row) => {
          return gridjs.h('button', {
            className: 'py-2 mb-4 px-4 border rounded-md text-white bg-blue-600',
            onClick: () => alert(`Editing "${row.cells[0].data}" "${row.cells[1].data}"`)
          }, 'Edit');
        }
      },
    ],

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
    table: {
      'font-size': '15px',
      border: '2px solid #ccc'
    },
    th: {
      'background-color': 'rgba(0, 0, 0, 0.1)',
       color: '#000',
      'border-bottom': '1px solid #fff',
      'text-align': 'center'
    },
    td: {
      'text-align': 'center'
    }
  }

  }).render(document.getElementById("wrapper"));
  end;

  WebButton1.Visible := false;
  WebLabel1.Visible := false;
end;

end.   