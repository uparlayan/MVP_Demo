unit Class_KDV_;

interface

type
  TKDV = class
    private
      FOran: Integer;
      FMatrah: Currency;
      FBrutMu: Boolean;
    strict private
      function KDVDahil: Currency;
      function KDVHaric: Currency;
    public
      constructor New(aMatrah: Currency; aOran: Integer; aBrutMu: Boolean = True);
      property Matrah: Currency read FMatrah write FMatrah;
      property Oran  : Integer read FOran write FOran;
      property BrutMu: Boolean read FBrutMu write FBrutMu;
      function KDV: Currency;
      function Tutar: Currency;
  end;

implementation

{ TKDV }

constructor TKDV.New(aMatrah: Currency; aOran: Integer; aBrutMu: Boolean);
begin
  FMatrah := aMatrah;
  FOran   := aOran;
  FBrutMu := aBrutMu;
end;

function TKDV.Tutar: Currency;
begin
  if FBrutMu then Result := KDVHaric else Result := KDVDahil;
end;

function TKDV.KDV: Currency;
begin
  if FBrutMu
  then Result := FMatrah * (FOran / (100 + FOran))
  else Result := FMatrah * (FOran / 100 );
end;

function TKDV.KDVDahil: Currency;
begin
  Result := FMatrah + KDV;
end;

function TKDV.KDVHaric: Currency;
begin
  Result := FMatrah - KDV;
end;

end.
