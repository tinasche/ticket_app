List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'New York',
    'price': 40
  },
  {
    'image': 'pool_view.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68
  },
  {
    'image': 'hotel_room_view_1.png',
    'place': 'Edgington Suite',
    'destination': 'Singapore',
    'price': 75
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NYC", 'name': "New-York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23
  },
  {
    'from': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shanghai"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45
  },
  {
    'from': {'code': "HRE", 'name': "Harare"},
    'to': {'code': "JB", 'name': "Johannesburg"},
    'flying_time': '1H 40M',
    'date': "20 JUL",
    'departure_time': "19:00 AM",
    "number": 38
  },
  {
    'from': {'code': "BYO", 'name': "Bulawayo"},
    'to': {'code': "NBO", 'name': "Nairobi"},
    'flying_time': '3H 35M',
    'date': "2 DEC",
    'departure_time': "09:00 AM",
    "number": 77
  },
  {
    'from': {'code': "TX", 'name': "Texas"},
    'to': {'code': "Belize", 'name': "BZE"},
    'flying_time': '6H 22M',
    'date': "14 AUG",
    'departure_time': "12:00 AM",
    "number": 49
  },
  {
    'from': {'code': "AXT", 'name': "Akita"},
    'to': {'code': "ABY", 'name': "Albany"},
    'flying_time': '11H 00M',
    'date': "12 FEB",
    'departure_time': "22:00 AM",
    "number": 12
  },
  {
    'from': {'code': "CWL", 'name': "Cardiff"},
    'to': {'code': "YYQ", 'name': "Churchill"},
    'flying_time': '9H 30M',
    'date': "10 MAY",
    'departure_time': "22:00 AM",
    "number": 20
  },
];

class AppRoutes {
  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";
}
