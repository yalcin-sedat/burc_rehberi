class Horoscop {
  String _horoscopName;
  String _horoscopDate;
  String _horoscopDetail;
  String _horoscopSmallPic;
  String _horoscopBigPic;

  Horoscop(this._horoscopName, this._horoscopDate, this._horoscopDetail,
      this._horoscopSmallPic, this._horoscopBigPic);

  String get horoscopBigPic => _horoscopBigPic;

  set horoscopBigPic(String value) {
    _horoscopBigPic = value;
  }

  String get horoscopSmallPic => _horoscopSmallPic;

  set horoscopSmallPic(String value) {
    _horoscopSmallPic = value;
  }

  String get horoscopDetail => _horoscopDetail;

  set horoscopDetail(String value) {
    _horoscopDetail = value;
  }

  String get horoscopDate => _horoscopDate;

  set horoscopDate(String value) {
    _horoscopDate = value;
  }

  String get horoscopName => _horoscopName;

  set horoscopName(String value) {
    _horoscopName = value;
  }
}
