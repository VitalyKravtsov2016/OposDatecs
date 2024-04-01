unit fmuPrintRecItemRefundVoid;

interface

uses
  // VCL
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  // Tnt
  TntStdCtrls, TntRegistry,
  // This
  untPages, OposFiscalPrinter;

type
  TfmPrintRecItemRefundVoid = class(TPage)
    btnExecute: TTntButton;
    lblDescription: TTntLabel;
    edtDescription: TTntEdit;
    lblAmount: TTntLabel;
    edtAmount: TTntEdit;
    lblQuantity: TTntLabel;
    edtQuantity: TTntEdit;
    lblVatInfo: TTntLabel;
    edtVatInfo: TTntEdit;
    lblUnitAmount: TTntLabel;
    edtUnitAmount: TTntEdit;
    lblUnitName: TTntLabel;
    edtUnitName: TTntEdit;
    procedure btnExecuteClick(Sender: TObject);
  end;

implementation

{$R *.DFM}

procedure TfmPrintRecItemRefundVoid.btnExecuteClick(Sender: TObject);
begin
  EnableButtons(False);
  try
    FiscalPrinter.PrintRecItemRefundVoid(
    	edtDescription.Text,
      StrToCurr(edtAmount.Text),
      StrToInt(edtQuantity.Text),
      StrToInt(edtVatInfo.Text),
      StrToCurr(edtUnitAmount.Text),
      edtUnitName.Text,
      );
  finally
    EnableButtons(True);
  end;
end;

end.
