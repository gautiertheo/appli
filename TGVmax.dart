import 'dart:convert';
void main() {
    var jsonString = '{"nhits": 1, "parameters": {"dataset": ["tgvmax"], "refine": {"origine": "NANCY", "date": ["2019", "2019/09", "2019/09/27"], "destination": "CHAMPAGNE ARDENNE", "od_happy_card": "OUI"}, "timezone": "UTC", "rows": 10, "format": "json", "facet": ["date", "origine", "destination", "od_happy_card"]}, "records": [{"datasetid": "tgvmax", "recordid": "355a830b5e408a060398c443e4186f283a9f01e6", "fields": {"heure_depart": "20:16", "heure_arrivee": "21:09", "date": "2019-09-27", "destination": "CHAMPAGNE ARDENNE", "train_no": 2549, "entity": "NANCYPA", "origine": "NANCY", "destination_iata": "FREAH", "origine_iata": "FRENC", "od_happy_card": "OUI", "axe": "EST", "code_equip": "TGF"}, "record_timestamp": "2019-08-30T03:21:00+00:00"}], "facet_groups": [{"name": "date", "facets": [{"name": "2019", "path": "2019", "count": 1, "state": "refined", "facets": [{"name": "09", "path": "2019/09", "count": 1, "state": "refined", "facets": [{"name": "27", "path": "2019/09/27", "count": 1, "state": "refined"}]}]}]}, {"name": "origine", "facets": [{"name": "NANCY", "path": "NANCY", "count": 1, "state": "refined"}]}, {"name": "destination", "facets": [{"name": "CHAMPAGNE ARDENNE", "path": "CHAMPAGNE ARDENNE", "count": 1, "state": "refined"}]}, {"name": "od_happy_card", "facets": [{"name": "OUI", "path": "OUI", "count": 1, "state": "refined"}]}]}'; 
  Map<String, dynamic> user = jsonDecode(jsonString);
  for (int i = 0; i < 5 ; i++) {
    print(' je t aime ${i + 1}' + user["nhits"]);
  }
}
