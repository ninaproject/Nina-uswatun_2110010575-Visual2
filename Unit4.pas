unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ADODB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, StdCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    con2: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    dbgrd1: TDBGrid;
    btn6: TButton;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '')or(edt7.Text= '')or(edt8.Text= '')or(edt9.Text= '')or(edt10.Text= '')or(edt11.Text= '')or(edt12.Text= '')or(edt13.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update prestasi set no="'+edt1.Text+'",nama_siswa="'+edt2.Text+'",nis="'+edt3.Text+'",nisn="'+edt4.Text+'",jenis_kelamin="'+edt5.Text+'",jurusan="'+edt6.Text+'",nama_wali_kelas="'+edt7.Text+'",nama_orang_tua="'+edt8.Text+'",telp/hp_orang_tua="'+edt9.Text+'",jenis_prestasi="'+edt10.Text+'",keterangan="'+edt11.Text+'",bulan="'+edt12.Text+'",tahun_pelajaran="'+edt13.Text+'" where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from prestasi');
  zqry1.Open;
  posisiawal;
end;

procedure TForm4.btn1Click(Sender: TObject);
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
  edt10.Enabled := True;
  edt11.Enabled := True;
  edt12.Enabled := True;
  edt13.Enabled := True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('N0 TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('NAMA SISWA TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('NIS  TIDAK BOLEH KOSONG');
  end else
if edt4.Text =''then
begin
  ShowMessage('NISN TIDAK BOLEH KOSONG');
  end else
if edt5.Text =''then
begin
  ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG');
  end else
if edt6.Text =''then
begin
  ShowMessage('JURUSAN TIDAK BOLEH KOSONG');
  end else
if edt7.Text =''then
begin
  ShowMessage('NAMA WALI KELAS TIDAK BOLEH KOSONG');
  end else
if edt8.Text =''then
begin
  ShowMessage('NAMA ORANG TUA TIDAK BOLEH KOSONG');
  end else
if edt9.Text =''then
begin
  ShowMessage('TELP/HP ORANG TUA TIDAK BOLEH KOSONG');
  end else
if edt10.Text =''then
begin
  ShowMessage('JENIS PRESTASI TIDAK BOLEH KOSONG');
  end else
if edt11.Text =''then
begin
  ShowMessage('KETERANGAN TIDAK BOLEH KOSONG');
  end else
if edt12.Text =''then
begin
  ShowMessage('BULAN TIDAK BOLEH KOSONG');
  end else
if edt13.Text =''then
begin
  ShowMessage('TAHUN PELAJARAN TIDAK BOLEH KOSONG');
  end else

begin
  //simpan
end;

zqry1.SQL.Clear;
zqry1.SQL.Add('insert into prestasi values(null,"'+edt1.text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+edt6.text+'","'+edt7.text+'","'+edt8.text+'","'+edt9.text+'","'+edt10.text+'","'+edt11.text+'","'+edt12.text+'","'+edt13.text+'",)');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from prestasi');
zqry1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from prestasi where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pestasi');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
  end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;

end.
