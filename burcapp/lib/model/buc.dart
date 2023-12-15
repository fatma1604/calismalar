//clas olusturcaz
class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this
      ._burcAdi; //bunları kulanıyorum cunkü bana bilgileri bazı yerlede göstermesi lazım

  get burcTarihi => this._burcTarihi;

  get burcDetayi => this._burcDetayi;

  get burcKucukResim => this._burcKucukResim;

  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);

  @override
  String toString() {
    return '$_burcAdi - $_burcBuyukResim';
  }
}
