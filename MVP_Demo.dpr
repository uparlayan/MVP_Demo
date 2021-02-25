program MVP_Demo;

uses
  Vcl.Forms,
  Ana_ in 'GUI\Ana_.pas' {Ana},
  Class_KDV_ in 'Common\Models\Class_KDV_.pas',
  Interface_KDV_ in 'Common\Views\Interface_KDV_.pas',
  Class_KDV_Presenter_ in 'Common\Presenter\Class_KDV_Presenter_.pas',
  Form_KDV_ in 'GUI\Form_KDV_.pas' {Form_KDV};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAna, Ana);
  Application.CreateForm(TForm_KDV, Form_KDV);
  Application.Run;
end.
