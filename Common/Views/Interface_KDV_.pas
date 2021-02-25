unit Interface_KDV_;

interface

type
  IKDV = interface
    {private}
      function GetMatrah  : string;
      function GetOran    : string;
      function GetBrutMu  : Boolean;
      function GetSonuc   : string;
      procedure SetMatrah (const Value: String);
      procedure SetOran   (const Value: String);
      procedure SetBrutMu (const Value: Boolean);
      procedure SetSonuc  (const Value: String);
    {public}
      property Matrah     : String  read GetMatrah  write SetMatrah;
      property Oran       : String  read GetOran    write SetOran;
      property BrutMu     : Boolean read GetBrutMu  write SetBrutMu;
      property Sonuc      : String  read GetSonuc   write SetSonuc;
  end;

implementation

end.
