unit fPlayGame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, DBCtrls;

type
  TfmGamePlay = class(TForm)
    dblkcbb1: TDBLookupComboBox;
    dblkcbb2: TDBLookupComboBox;
    JvValidateEdit1: TJvValidateEdit;
    JvValidateEdit2: TJvValidateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    btn2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGamePlay: TfmGamePlay;

implementation

{$R *.dfm}

end.
