object dmz: Tdmz
  OldCreateOrder = False
  Left = 564
  Top = 196
  Height = 357
  Width = 373
  object rinoconn: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'rinovaintan'
    User = 'root'
    Password = 'yaallah'
    Connected = True
    Left = 16
    Top = 8
  end
  object kategoridset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'select * from takategoriobat')
    Params = <>
    Left = 112
    Top = 8
  end
  object kategorids: TDataSource
    DataSet = kategoridset
    Left = 312
    Top = 8
  end
  object psikodset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'select * from taapotikdetail')
    Params = <>
    Left = 112
    Top = 80
  end
  object thelapapotikds: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'SELECT * FROM taapotik')
    Params = <>
    Left = 112
    Top = 136
    object thelapapotikdsap_idx: TLargeintField
      FieldName = 'ap_idx'
      Required = True
    end
    object thelapapotikdsapKodeApotik: TStringField
      FieldName = 'apKodeApotik'
      Required = True
      Size = 50
    end
    object thelapapotikdsapTgl: TDateField
      FieldName = 'apTgl'
    end
    object thelapapotikdsapNoRegPasien: TStringField
      FieldName = 'apNoRegPasien'
      Size = 50
    end
    object thelapapotikdsapTipeCustomer: TStringField
      FieldName = 'apTipeCustomer'
      Size = 50
    end
    object thelapapotikdsapppn: TSmallintField
      FieldName = 'apppn'
    end
    object thelapapotikdsapjam: TTimeField
      FieldName = 'apjam'
    end
    object thelapapotikdsapTotal: TIntegerField
      FieldName = 'apTotal'
      DisplayFormat = '#,###'
    end
    object thelapapotikdsaptglwkt: TDateTimeField
      FieldName = 'aptglwkt'
    end
    object thelapapotikdsappic: TStringField
      FieldName = 'appic'
      Size = 50
    end
    object thelapapotikdsapnama: TStringField
      FieldName = 'apnama'
      Size = 50
    end
    object thelapapotikdsapalamat: TStringField
      FieldName = 'apalamat'
      Size = 150
    end
    object thelapapotikdsapumur: TStringField
      FieldName = 'apumur'
      Size = 2
    end
    object thelapapotikdsapjaminan: TStringField
      FieldName = 'apjaminan'
      Size = 50
    end
  end
  object expireddset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'SELECT * FROM taobat')
    Params = <>
    Left = 184
    Top = 8
    object expireddsetobKode: TStringField
      FieldName = 'obKode'
      Required = True
      Size = 50
    end
    object expireddsetobNama: TStringField
      FieldName = 'obNama'
      Size = 150
    end
    object expireddsetobKodeSupplier: TStringField
      FieldName = 'obKodeSupplier'
      Size = 50
    end
    object expireddsetobSatuan: TStringField
      FieldName = 'obSatuan'
      Size = 100
    end
    object expireddsetobStok: TLargeintField
      FieldName = 'obStok'
    end
    object expireddsetobMinStok: TLargeintField
      FieldName = 'obMinStok'
    end
    object expireddsetobHargaJual: TLargeintField
      FieldName = 'obHargaJual'
      DisplayFormat = '#,#'
    end
    object expireddsetobHargaBeli: TIntegerField
      FieldName = 'obHargaBeli'
    end
    object expireddsetobKategori: TStringField
      FieldName = 'obKategori'
      Size = 50
    end
    object expireddsetobExpired: TDateField
      FieldName = 'obExpired'
    end
    object expireddsetobMerek: TStringField
      FieldName = 'obMerek'
      Size = 100
    end
    object expireddsetobSeri: TStringField
      FieldName = 'obSeri'
      Size = 100
    end
    object expireddsetobDiskon: TLargeintField
      FieldName = 'obDiskon'
    end
  end
  object gudangdset: TZQuery
    Connection = rinoconn
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM tagudang')
    Params = <>
    Left = 184
    Top = 80
  end
  object gudangds: TDataSource
    DataSet = gudangdset
    Left = 312
    Top = 64
  end
  object kartustockdset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'SELECT * FROM kartustock'
      'ORDER BY ks_id DESC')
    Params = <>
    Left = 24
    Top = 80
  end
  object kartustockds: TDataSource
    DataSet = kartustockdset
    Left = 256
    Top = 8
  end
  object obatdset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'select * from taobat ')
    Params = <>
    Left = 24
    Top = 136
  end
  object obatds: TDataSource
    DataSet = obatdset
    Left = 312
    Top = 120
  end
  object obatstockdset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'SELECT* FROM taobat ORDER BY obnama  ASC')
    Params = <>
    Left = 192
    Top = 136
  end
  object obatstockds: TDataSource
    DataSet = obatstockdset
    Left = 256
    Top = 64
  end
  object stockopnamedset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'SELECT * FROM stockopname')
    Params = <>
    Left = 112
    Top = 200
    object stockopnamedsetso_id: TIntegerField
      FieldName = 'so_id'
      Required = True
    end
    object stockopnamedsetso_kdobat: TStringField
      FieldName = 'so_kdobat'
      Size = 255
    end
    object stockopnamedsetso_tgl: TDateField
      FieldName = 'so_tgl'
    end
    object stockopnamedsetso_time: TTimeField
      FieldName = 'so_time'
    end
    object stockopnamedsetso_current: TIntegerField
      FieldName = 'so_current'
    end
    object stockopnamedsetso_adjust: TIntegerField
      FieldName = 'so_adjust'
    end
    object stockopnamedsetso_pic: TStringField
      FieldName = 'so_pic'
      Size = 255
    end
    object stockopnamedsetso_harga: TFloatField
      FieldName = 'so_harga'
      DisplayFormat = '#,###'
    end
    object stockopnamedsetso_namaobat: TStringField
      FieldName = 'so_namaobat'
      Size = 255
    end
  end
  object obatresetdset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'select * from taobat ')
    Params = <>
    Left = 24
    Top = 200
  end
  object lapbrgmasukdset: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'select * from pembelian')
    Params = <>
    Left = 240
    Top = 216
  end
  object lapbrgdetail: TZQuery
    Connection = rinoconn
    SQL.Strings = (
      'select * from pembeliandetail'
      'order by pd_id asc limit 100')
    Params = <>
    Left = 120
    Top = 256
    object lapbrgdetailpd_Id: TIntegerField
      FieldName = 'pd_Id'
      Required = True
    end
    object lapbrgdetailpd_notransaksi: TStringField
      FieldName = 'pd_notransaksi'
      Size = 255
    end
    object lapbrgdetailpd_kodeobat: TStringField
      FieldName = 'pd_kodeobat'
      Size = 255
    end
    object lapbrgdetailpd_namaobat: TStringField
      FieldName = 'pd_namaobat'
      Size = 255
    end
    object lapbrgdetailpd_qty: TIntegerField
      FieldName = 'pd_qty'
    end
    object lapbrgdetailpd_total: TFloatField
      FieldName = 'pd_total'
      DisplayFormat = '#,###'
    end
    object lapbrgdetailpd_hrga: TFloatField
      FieldName = 'pd_hrga'
      DisplayFormat = '#,###'
    end
    object lapbrgdetailpd_tgl: TDateField
      FieldName = 'pd_tgl'
    end
    object lapbrgdetailpd_kategori: TStringField
      FieldName = 'pd_kategori'
      Size = 255
    end
  end
end
