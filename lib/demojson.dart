void main(){
  var data = [
    {
      "title": "Chicago",
      "location_type": "City",
      "woeid": 2379574,
      "latt_long": "41.884151,-87.632408"
    }
  ];
  var object = Data.fromJson(data[0]);
  print(object.toJson());
}

class Data{
  late String title;
  late String location;
  late int id;
  late String lat_lon;

  Data.fromJson(Map<String,dynamic> json){
    this.title = json['title'];
    this.location = json['location_type'];
    this.id = json['woeid'];
    this.lat_lon = json['latt_long'];
  }

  Map<String,dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title;
    data['location_type'] = location;
    data['woeid'] = id;
    data['latt_long'] = lat_lon;
    return data;
  }

  @override
  String toString() {
    return 'Data{title: $title, location: $location, id: $id, lat_lon: $lat_lon}';
  }
}