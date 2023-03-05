import 'dart:ffi';

class BPass {
  final String ID;
  final String Name;
  final String Booking;
  final String FligtNumber;
  final String TypePass;
  final String Zone;
  final String Sit;
  final Bool Check1;
  final Bool Check2;
  final Bool Check3;
  final int ICheck1;
  final int ICheck2;
  final int ICheck3;

  BPass(
      {required this.ID,
      required this.Name,
      required this.Booking,
      required this.FligtNumber,
      required this.TypePass,
      required this.Zone,
      required this.Sit,
      required this.Check1,
      required this.Check2,
      required this.Check3,
      required this.ICheck1,
      required this.ICheck2,
      required this.ICheck3});

  BPass.fromJaon(Map<String, dynamic> json)
      : ID = json['id'],
        Name = json['name'],
        Booking = json['booking'],
        FligtNumber = json['flight_number'],
        TypePass = json['type_pass'],
        Zone = json['zone'],
        Sit = json['sit'],
        Check1 = json['check1'],
        Check2 = json['check2'],
        Check3 = json['check3'],
        ICheck1 = json['icheck1'],
        ICheck2 = json['icheck2'],
        ICheck3 = json['icheck3'];
  Map<String, dynamic> toJson() => {
        'id': ID,
        'name': Name,
        'booking': Booking,
        'flight_number': FligtNumber,
        'type_pass': TypePass,
        'zone': Zone,
        'sit': Sit,
        'check1': Check1,
        'check2': Check2,
        'check3': Check3,
        'icheck1': ICheck1,
        'icheck2': ICheck2,
        'icheck3': ICheck3,
      };
}
