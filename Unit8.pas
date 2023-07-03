unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
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
    dbgrd1: TDBGrid;
    btn6: TButton;
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
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
 btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NO TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('JENIS PELANGGARAN TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('POINT TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_pelanggaran values(null,"'+edt1.text+'","'+edt2.text+'","'+edt3.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_pelanggaran');
zqry1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tabel_pelanggaran where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tabel_pelanggaran');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
end;

end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '')or(edt7.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_pelanggaran set no="'+edt1.Text+'",jenis_pelanggaran="'+edt2.Text+'",point="'+edt3.Text+'" where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_pelanggaran');
  zqry1.Open;
  posisiawal;
end;

end.
