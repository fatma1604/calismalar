class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _kucukresim;
  final String _buyukresim;
  get burcAdi => this._burcAdi;

 

  get burcTarihi => this._burcTarihi;

 

  get burcDetayi => this._burcDetayi;

 

  get kucukresim => this._kucukresim;

 

  get buyukresim => this._buyukresim;

 

  
  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._kucukresim,
      this._buyukresim);

  @override
  String toString() {
    return '$_burcAdi - $_buyukresim';
  }

}