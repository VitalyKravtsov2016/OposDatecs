unit fmuFptrLog;

interface

uses
  // VCL
  ComCtrls, StdCtrls, Controls, Classes, Spin,
  // Tnt
  TntClasses, TntStdCtrls, TntRegistry,
  // This
  FiscalPrinterDevice, FptrTypes;

type
  { TfmFptrLog }

  TfmFptrLog = class(TFptrPage)
    chbLogEnabled: TTntCheckBox;
    lblLogFilePath: TTntLabel;
    edtLogFilePath: TTntEdit;
    seMaxLogFileCount: TSpinEdit;
    lblMaxLogFileCount: TTntLabel;
    Label1: TLabel;
    procedure PageChanged(Sender: TObject);
  public
    procedure UpdatePage; override;
    procedure UpdateObject; override;
  end;

implementation

{$R *.DFM}

{ TfmFptrLog }

procedure TfmFptrLog.UpdatePage;
begin
  chbLogEnabled.Checked := Parameters.LogFileEnabled;
  seMaxLogFileCount.Value := Parameters.LogMaxCount;
  edtLogFilePath.Text := Parameters.LogFilePath;
end;

procedure TfmFptrLog.UpdateObject;
begin
  Parameters.LogFileEnabled := chbLogEnabled.Checked;
  Parameters.LogMaxCount := seMaxLogFileCount.Value;
  Parameters.LogFilePath := edtLogFilePath.Text;
end;

procedure TfmFptrLog.PageChanged(Sender: TObject);
begin
  Modified;
end;

end.
