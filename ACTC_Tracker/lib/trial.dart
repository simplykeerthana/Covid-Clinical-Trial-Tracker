import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

//you plan to through this but only display the important one right?
// so right now we need to get the location and map the marker to the map 
// and then at that markeer we will have a popup text displating the most important ones
//but the algorithm for web and android should be the same right?
// yeah its the same ... same marker and popwidget
//ok

//yeah i think we should keep all the info in case rn, if its too slow,we will remove ones that  are not important. yeah

// i dont think it will be slow ulsee we try to load evrthing 

class Trial {
  static final geo = Geocoder.google("AIzaSyBBo2X0aDAveBYjw4M7jsRSD4lSgBm_ago");
  String TrialID; //important
  String LastRefreshedon; //important
  String Publictitle; //important
  String Scientifictitle; // important
  String Acronym;
  String Primarysponsor;
  String Dateregistration;
  String Dateregistration3;
  String Exportdate;
  String SourceRegister;//important
  String webaddress;  // import, textt as url so user can click 
  String RecruitmentStatus;
  String otherrecords;
  String Inclusionagemin;
  String Inclusionagemax;
  String Inclusiongender;
  String Dateenrollement;
  String Targetsize; //important
  String Studytype; //important
  String Studydesign;
  String Phase; //important, highlight this us important
  String Countries; // important
  String ContactFirstname;
  String ContactLastname;
  String ContactAddress;
  String ContactEmail;
  String ContactTel;
  String ContactAffiliation;
  String InclusionCriteria;
  String ExclusionCriteria;
  String Condition;
  String Intervention;
  String Primaryoutcome;
  String resultsdateposted;
  String resultsdatecompleted;
  String resultsurllink;
  String Retrospectiveflag;
  bool Bridgingflagtruefalse;
  String Bridgedtype;
  String resultsyesno;
  double latitude = 0.0;
  double longitude = 0.0;

  Trial({this.TrialID,this.LastRefreshedon,this.Publictitle,this.Scientifictitle,this.Acronym,this.Primarysponsor,this.Dateregistration,this.Dateregistration3,this.Exportdate,this.SourceRegister,this.webaddress,this.RecruitmentStatus,this.otherrecords,this.Inclusionagemin,this.Inclusionagemax,this.Inclusiongender,this.Dateenrollement,this.Targetsize,this.Studytype,this.Studydesign,this.Phase,this.Countries,this.ContactFirstname,this.ContactLastname,this.ContactAddress,this.ContactEmail,this.ContactTel,this.ContactAffiliation,this.InclusionCriteria,this.ExclusionCriteria,this.Condition,this.Intervention,this.Primaryoutcome,this.resultsdateposted,this.resultsdatecompleted,this.resultsurllink,this.Retrospectiveflag,this.Bridgingflagtruefalse,this.Bridgedtype,this.resultsyesno, this.latitude, this.longitude}) {
    //getCoordinates();
  }

  factory Trial.fromJson(Map<String, dynamic> json)
  {
    return Trial(TrialID : json["TrialID"] as String,
    LastRefreshedon : json["Last Refreshed on"] as String,
    Publictitle : json["Public title"] as String,
    Scientifictitle : json["Scientific title"] as String,
    Acronym : json["Acronym"] as String,
    Primarysponsor : json["Primary sponsor"] as String,
    Dateregistration : json["Date registration"] as String,
    Dateregistration3 : json["Date registration3"] as String,
    Exportdate : json["Export date"] as String,
    SourceRegister : json["Source Register"] as String,
    webaddress : json["web address"] as String,
    RecruitmentStatus : json["Recruitment Status"] as String,
    otherrecords : json["other records"] as String,
    Inclusionagemin : json["Inclusion agemin"] as String,
    Inclusionagemax : json["Inclusion agemax"] as String,
    Inclusiongender : json["Inclusion gender"] as String,
    Dateenrollement : json["Date enrollement"] as String,
    Targetsize : json["Target size"] as String,
    Studytype : json["Study type"] as String,
    Studydesign : json["Study design"] as String,
    Phase : json["Phase"] as String,
    Countries : json["Countries"] as String,
    ContactFirstname : json["Contact Firstname"] as String,
    ContactLastname : json["Contact Lastname"] as String,
    ContactAddress : json["Contact Address"] as String,
    ContactEmail : json["Contact Email"] as String,
    ContactTel : json["Contact Tel"] as String,
    ContactAffiliation : json["Contact Affiliation"] as String,
    InclusionCriteria : json["Inclusion Criteria"] as String,
    ExclusionCriteria : json["Exclusion Criteria"] as String,
    Condition : json["Condition"] as String,
    Intervention : json["Intervention"] as String,
    Primaryoutcome : json["Primary outcome"] as String,
    resultsdateposted : json["results date posted"] as String,
    resultsdatecompleted : json["results date completed"] as String,
    resultsurllink : json["results url link"] as String,
    Retrospectiveflag : json["Retrospective flag"] as String,
    Bridgingflagtruefalse : json["Bridging flag truefalse"] as bool,
    Bridgedtype : json["Bridged type"] as String,
    resultsyesno : json["results yes no"] as String,
    latitude: json["lat"] as double,
    longitude: json["lang"] as double,
    );
    
  }

  Future<void> getCoordinates() async {
    //var addresses = await geo.findAddressesFromQuery(this.ContactAddress);
    
    try {
      List<Placemark> placemark = await Geolocator().placemarkFromAddress(this.ContactAddress);
      var firstAddress = placemark.first.position;
      this.latitude = firstAddress.latitude;
      this.longitude = firstAddress.longitude;
    }
    catch (Error) {
      print("No addresses");
    }
  }

  @override 
  String toString() {
    return this.Publictitle;
  }
}