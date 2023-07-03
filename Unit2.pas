unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, frxClass, frxDBSet, StdCtrls;

type
  TForm2 = class(TForm)
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
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from ortu where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from ortu');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
  end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;

procedure TForm2.btn1Click(Sender: TObject);
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

end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NO TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('NAMA ORTU TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('NIK TIDAK BOLEH KOSONG');
  end else
if edt4.Text =''then
begin
  ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG');
  end else
if edt5.Text =''then
begin
  ShowMessage('TELPON LAHIR TIDAK BOLEH KOSONG');
  end else
if edt6.Text =''then
begin
  ShowMessage('ALAMAT TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

zqry1.SQL.Clear;
zqry1.SQL.Add('insert into ortu values(null,"'+edt1.text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+edt6.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from ortu');
zqry1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
procedure TForm2.btn5Click(Sender: TObject);
begin
bersih;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update ortu set no="'+edt1.Text+'",nama_ortu="'+edt2.Text+'",nik="'+edt3.Text+'",pekerjaan="'+edt4.Text+'",telpon="'+edt5.Text+'",alamat="'+edt6.Text+'" where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from ortu');
  zqry1.Open;
  posisiawal;
end;

end.
