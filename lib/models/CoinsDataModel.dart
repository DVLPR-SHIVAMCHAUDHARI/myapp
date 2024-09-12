class CoinsDataModel {
  String? time;
  String? assetIdBase;
  String? assetIdQuote;
  double? rate;

  CoinsDataModel({this.time, this.assetIdBase, this.assetIdQuote, this.rate});

  CoinsDataModel.fromJson(Map<String, dynamic> json) {
    time = json["time"];
    assetIdBase = json["asset_id_base"];
    assetIdQuote = json["asset_id_quote"];
    rate = json["rate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["time"] = time;
    _data["asset_id_base"] = assetIdBase;
    _data["asset_id_quote"] = assetIdQuote;
    _data["rate"] = rate;
    return _data;
  }
}
