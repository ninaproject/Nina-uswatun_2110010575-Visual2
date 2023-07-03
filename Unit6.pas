unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, frxClass, frxDBSet, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    ds1: TDataSource;
    qry1: TADOQuery;
    con1: TZConnection;
    zqry1: TZQuery;
    con2: TADOConnection;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dbgrd1: TDBGrid;
    btn6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
object lbl1: TLabel
  Left = 256
  Top = 24
  Width = 12
  Height = 13
  Caption = 'no'
  OnClick = lbl1Click
end
object lbl2: TLabel
  Left = 256
  Top = 56
  Width = 49
  Height = 13
  Caption = 'nama ortu'
end
object lbl3: TLabel
  Left = 256
  Top = 88
  Width = 13
  Height = 13
  Caption = 'nik'
end
object lbl4: TLabel
  Left = 256
  Top = 120
  Width = 48
  Height = 13
  Caption = 'pekerjaan'
end
object lbl5: TLabel
  Left = 256
  Top = 152
  Width = 30
  Height = 13
  Caption = 'telpon'
end
object lbl6: TLabel
  Left = 256
  Top = 184
  Width = 32
  Height = 13
  Caption = 'alamat'
end
object edt1: TEdit
  Left = 320
  Top = 24
  Width = 121
  Height = 21
  TabOrder = 0
  Text = 'edt1'
end
object edt2: TEdit
  Left = 320
  Top = 56
  Width = 121
  Height = 21
  TabOrder = 1
  Text = 'edt2'
end
object edt3: TEdit
  Left = 320
  Top = 88
  Width = 121
  Height = 21
  TabOrder = 2
  Text = 'edt3'
end
object edt4: TEdit
  Left = 320
  Top = 120
  Width = 121
  Height = 21
  TabOrder = 3
  Text = 'edt4'
end
object edt5: TEdit
  Left = 320
  Top = 152
  Width = 121
  Height = 21
  TabOrder = 4
  Text = 'edt5'
end
object edt6: TEdit
  Left = 320
  Top = 184
  Width = 121
  Height = 21
  TabOrder = 5
  Text = 'edt6'
end
object frxrprt1: TfrxReport
  Version = '4.0.11'
  DotMatrixReport = False
  IniFile = '\Software\Fast Reports'
  PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
  PreviewOptions.Zoom = 1.000000000000000000
  PrintOptions.Printer = 'Default'
  PrintOptions.PrintOnSheet = 0
  ReportOptions.CreateDate = 45109.740332581020000000
  ReportOptions.LastChange = 45109.740332581020000000
  ScriptLanguage = 'PascalScript'
  ScriptText.Strings = (
    'begin'
    ''
    'end.')
  Left = 56
  Top = 56
  Datasets = <>
  Variables = <>
  Style = <>
end
object frxdbdtst1: TfrxDBDataset
  UserName = 'frxdbdtst1'
  CloseDataSource = False
  Left = 56
  Top = 104
end
object ds1: TDataSource
  DataSet = zqry1
  Left = 16
  Top = 104
end
object qry1: TADOQuery
  Parameters = <>
  Left = 16
  Top = 152
end
object con1: TZConnection
  ControlsCodePage = cGET_ACP
  UTF8StringsAsWideField = False
  AutoEncodeStrings = False
  Connected = True
  HostName = 'localhost'
  Port = 3306
  Database = 'tugas-akhir'
  User = 'root'
  Protocol = 'mysql'
  LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
  Left = 16
  Top = 8
end
object zqry1: TZQuery
  Connection = con1
  Active = True
  SQL.Strings = (
    'select*from ortu')
  Params = <>
  Left = 16
  Top = 56
end
object con2: TADOConnection
  Left = 56
  Top = 8
end
object dbgrd1: TDBGrid
  Left = 56
  Top = 248
  Width = 457
  Height = 145
  DataSource = ds1
  TabOrder = 6
  TitleFont.Charset = DEFAULT_CHARSET
  TitleFont.Color = clWindowText
  TitleFont.Height = -11
  TitleFont.Name = 'Tahoma'
  TitleFont.Style = []
end

procedure TForm6.btn5Click(Sender: TObject);
begin
bersih;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end;

procedure TForm6.btn1Click(Sender: TObject);
begin
 btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;
  edt9.Enabled := True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NO TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('NAMA WALI KELAS TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG');
  end else
if edt4.Text =''then
begin
  ShowMessage('ALAMAT TIDAK BOLEH KOSONG');
  end else
if edt5.Text =''then
begin
  ShowMessage('FIELD TIDAK BOLEH KOSONG');
  end else
if edt6.Text =''then
begin
  ShowMessage('TINGKAT KELAS TIDAK BOLEH KOSONG');
  end else
if edt7.Text =''then
begin
  ShowMessage('JURUSAN TIDAK BOLEH KOSONG');
  end else
if edt8.Text =''then
begin
  ShowMessage('TELPON TIDAK BOLEH KOSONG');
  end else
if edt9.Text =''then
begin
  ShowMessage('HP TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

zqry1.SQL.Clear;
zqry1.SQL.Add('insert into wali_kelas values(null,"'+edt1.text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+edt6.text+'","'+edt7.text+'","'+edt8.text+'","'+edt9.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from wali_kelas where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from wali_kelas');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
  end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;

end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '')or(edt7.Text= '')or(edt8.Text= '')or(edt9.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update wali_kelas set no="'+edt1.Text+'",nama_wali_kelas="'+edt2.Text+'",jenis_kelamin="'+edt3.Text+'",alamat="'+edt4.Text+'",field="'+edt5.Text+'",tingkat_kelas="'+edt6.Text+'",jurusan="'+edt7.Text+'",telpon="'+edt8.Text+'",hp="'+edt9.Text+'" where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from data_ortu');
  zqry1.Open;
  posisiawal;
end;

end.
