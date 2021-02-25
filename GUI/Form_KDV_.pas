unit Form_KDV_;

interface

uses
  Class_KDV_Presenter_,
  Interface_KDV_,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm_KDV = class(TForm, IKDV)
    Label1: TLabel;
    Label2: TLabel;
    lb_Sonuc: TLabel;
    ed_Matrah: TEdit;
    ed_KDVOran: TEdit;
    BT_Hesapla: TButton;
    cb_Brut: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BT_HesaplaClick(Sender: TObject);
  private
    { Private declarations }
    function GetBrutMu: Boolean;
    function GetMatrah: String;
    function GetOran: String;
    function GetSonuc: String;
    procedure SetBrutMu(const Value: Boolean);
    procedure SetMatrah(const Value: String);
    procedure SetOran(const Value: String);
    procedure SetSonuc(const Value: String);
  protected // or private...
    _Presenter: TKDV_Presenter;
  public
    { Public declarations }
      property Matrah     : String  read GetMatrah  write SetMatrah;
      property Oran       : String  read GetOran    write SetOran;
      property BrutMu     : Boolean read GetBrutMu  write SetBrutMu;
      property Sonuc      : String  read GetSonuc   write SetSonuc;
  end;

var
  Form_KDV: TForm_KDV;

implementation

{$R *.dfm}

{ TForm_KDV }

procedure TForm_KDV.BT_HesaplaClick(Sender: TObject);
begin
  _Presenter.LoadParams;
  _Presenter.Execute;
end;

procedure TForm_KDV.FormCreate(Sender: TObject);
begin
  _Presenter:=TKDV_Presenter.Create( SELF );
end;

procedure TForm_KDV.FormDestroy(Sender: TObject);
begin
  FreeAndNil(_Presenter);
end;

function TForm_KDV.GetBrutMu: Boolean;
begin
  Result := cb_Brut.Checked;
end;

function TForm_KDV.GetMatrah: String;
begin
  Result := ed_Matrah.Text;
end;

function TForm_KDV.GetOran: String;
begin
  Result := ed_KDVOran.Text;
end;

function TForm_KDV.GetSonuc: String;
begin
  Result := lb_Sonuc.Caption;
end;

procedure TForm_KDV.SetBrutMu(const Value: Boolean);
begin
  cb_Brut.Checked := Value;
end;

procedure TForm_KDV.SetMatrah(const Value: String);
begin
  ed_Matrah.Text := Value;
end;

procedure TForm_KDV.SetOran(const Value: String);
begin
  ed_KDVOran.Text := Value;
end;

procedure TForm_KDV.SetSonuc(const Value: String);
begin
  lb_Sonuc.Caption := Value;
end;

end.
