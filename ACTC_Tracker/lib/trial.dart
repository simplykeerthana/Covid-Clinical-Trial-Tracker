import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/material.dart';

//you plan to through this but only display the important one right?
// so right now we need to get the location and map the marker to the map 
// and then at that markeer we will have a popup text displating the most important ones
//but the algorithm for web and android should be the same right?
// yeah its the same ... same marker and popwidget
//ok

//yeah i think we should keep all the info in case rn, if its too slow,we will remove ones that  are not important. yeah

// i dont think it will be slow ulsee we try to load evrthing 

class Trial {
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

  Trial(this.TrialID,this.LastRefreshedon,this.Publictitle,this.Scientifictitle,this.Acronym,this.Primarysponsor,this.Dateregistration,this.Dateregistration3,this.Exportdate,this.SourceRegister,this.webaddress,this.RecruitmentStatus,this.otherrecords,this.Inclusionagemin,this.Inclusionagemax,this.Inclusiongender,this.Dateenrollement,this.Targetsize,this.Studytype,this.Studydesign,this.Phase,this.Countries,this.ContactFirstname,this.ContactLastname,this.ContactAddress,this.ContactEmail,this.ContactTel,this.ContactAffiliation,this.InclusionCriteria,this.ExclusionCriteria,this.Condition,this.Intervention,this.Primaryoutcome,this.resultsdateposted,this.resultsdatecompleted,this.resultsurllink,this.Retrospectiveflag,this.Bridgingflagtruefalse,this.Bridgedtype,this.resultsyesno);

  Trial.fromJson(dynamic json)
  {
    TrialID = json["TrialID"];
    LastRefreshedon = json["Last Refreshed on"];
    Publictitle = json["Publictitle"];
    Scientifictitle = json["Scientifictitle"];
    Acronym = json["Acronym"];
    Primarysponsor = json["Primarysponsor"];
    Dateregistration = json["Dateregistration"];
    Dateregistration3 = json["Dateregistration3"];
    Exportdate = json["Exportdate"];
    SourceRegister = json["SourceRegister"];
    webaddress = json["webaddress"];
    RecruitmentStatus = json["RecruitmentStatus"];
    otherrecords = json["otherrecords"];
    Inclusionagemin = json["Inclusionagemin"];
    Inclusionagemax = json["Inclusionagemax"];
    Inclusiongender = json["Inclusiongender"];
    Dateenrollement = json["Dateenrollement"];
    Targetsize = json["Targetsize"];
    Studytype = json["Studytype"];
    Studydesign = json["Studydesign"];
    Phase = json["Phase"];
    Countries = json["Countries"];
    ContactFirstname = json["ContactFirstname"];
    ContactLastname = json["ContactLastname"];
    ContactAddress = json["ContactAddress"];
    ContactEmail = json["ContactEmail"];
    ContactTel = json["ContactTel"];
    ContactAffiliation = json["ContactAffiliation"];
    InclusionCriteria = json["InclusionCriteria"];
    ExclusionCriteria = json["ExclusionCriteria"];
    Condition = json["Condition"];
    Intervention = json["Intervention"];
    Primaryoutcome = json["Primaryoutcome"];
    resultsdateposted = json["resultsdateposted"];
    resultsdatecompleted = json["resultsdatecompleted"];
    resultsurllink = json["resultsurllink"];
    Retrospectiveflag = json["Retrospectiveflag"];
    Bridgingflagtruefalse = json["Bridgingflagtruefalse"];
    Bridgedtype = json["Bridgedtype"];
    resultsyesno = json["resultsyesno"];
  }
}