unit Ana_;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAna = class(TForm)
    BT_KDV_HesapMakinesi: TButton;
    procedure BT_KDV_HesapMakinesiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ana: TAna;

implementation

uses
  Form_KDV_;

{$R *.dfm}

procedure TAna.BT_KDV_HesapMakinesiClick(Sender: TObject);
begin
  with  TForm_KDV.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

end.
