/// Достопримечательность - модель данных

class Sight {
  final String nameSights;
  final double lat;
  final double lon;
  final String url;
  final String details;
  final String type;
  final String planDate;
  final String visitDate;
  final String timeTable;

  Sight({
    this.nameSights,
    this.lat,
    this.lon,
    this.url,
    this.details,
    this.type,
    this.planDate,
    this.visitDate,
    this.timeTable
  });
}
