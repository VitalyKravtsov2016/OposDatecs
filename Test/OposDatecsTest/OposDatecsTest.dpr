program OposDatecsTest;

uses
  SysUtils,
  TestFramework,
  GUITestRunner,
  LogFile in '..\..\src\Shared\LogFile.pas',
  Opos in '..\..\src\Opos\Opos.pas',
  OposUtils in '..\..\src\Opos\OposUtils.pas',
  Oposhi in '..\..\src\Opos\Oposhi.pas',
  OposStat in '..\..\src\Opos\OposStat.pas',
  OposSemaphore in '..\..\src\Opos\OposSemaphore.pas',
  WException in '..\..\src\Shared\WException.pas',
  duOposDevice in 'units\duOposDevice.pas',
  duOposUtils in 'units\duOposUtils.pas',
  duDatecsPrinter in 'units\duDatecsPrinter.pas',
  OPOSException in '..\..\src\Opos\OposException.pas',
  OposServiceDevice19 in '..\..\src\Opos\OposServiceDevice19.pas',
  OposFptr in '..\..\src\Opos\OposFptr.pas',
  OposEvents in '..\..\src\Opos\OposEvents.pas',
  OposFptrUtils in '..\..\src\Opos\OposFptrUtils.pas',
  OposFptrhi in '..\..\src\Opos\OposFptrhi.pas',
  NotifyThread in '..\..\src\Shared\NotifyThread.pas',
  StringUtils in '..\..\src\Shared\StringUtils.pas',
  RegExpr in '..\..\src\Shared\RegExpr.pas',
  FileUtils in '..\..\src\Shared\FileUtils.pas',
  DatecsPrinter2 in '..\..\src\OposDatecs\units\DatecsPrinter2.pas',
  PrinterPort in '..\..\src\Shared\PrinterPort.pas',
  ByteUtils in '..\..\src\Shared\ByteUtils.pas',
  SerialPort in '..\..\src\Shared\SerialPort.pas',
  DeviceNotification in '..\..\src\Shared\DeviceNotification.pas',
  PortUtil in '..\..\src\Shared\PortUtil.pas',
  TextReport in '..\..\src\Shared\TextReport.pas',
  SocketPort in '..\..\src\Shared\SocketPort.pas',
  DriverError in '..\..\src\Shared\DriverError.pas';

{$R *.RES}

begin
  TGUITestRunner.RunTest(RegisteredTests);
end.
