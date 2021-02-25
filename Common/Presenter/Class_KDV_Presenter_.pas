unit Class_KDV_Presenter_;

interface

uses
    Class_KDV_
  , Interface_KDV_
  ;

type
  TKDV_Presenter = class
    private
      _Model: TKDV;
      _View : IKDV;
    public
      constructor Create(const aView: IKDV);
      destructor Destroy; override;
      procedure LoadParams;
      procedure Execute;
  end;

implementation

uses
  System.SysUtils;

{ TKDV_Presenter }

constructor TKDV_Presenter.Create(const aView: IKDV);
begin
  _Model := TKDV.Create;
  _View  := aView;
end;

destructor TKDV_Presenter.Destroy;
begin
  FreeAndNil(_Model);
  inherited;
end;

procedure TKDV_Presenter.LoadParams;
begin
  _Model.Matrah := _View.Matrah.ToExtended;
  _Model.Oran   := _View.Oran.ToInteger;
  _Model.BrutMu := _View.BrutMu;
end;

procedure TKDV_Presenter.Execute;
begin
  _View.Sonuc := Format(  'Hesaplanan KDV = %8.2f ₺'#13#10
                        + 'KDVli Tutar    = %8.2f ₺'
                        , [ _Model.KDV, _Model.Tutar]);
end;

end.
