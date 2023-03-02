// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  String? id;
  String? email;
  String? password;
  Map<String, String>? location;
  String? job;
  String? height;
  String? physique;
  String? area;
  String? education;
  String? alcohol;
  String? religion;
  String? blood;
  String? smoke;
  @JsonKey(name: "type_appraisal")
  String? typeAppraisal;
  @JsonKey(name: "state_appraisal")
  String? stateAppraisal;
  double? star;
  @JsonKey(name: "is_refresh_star", defaultValue: false)
  bool? isRefreshStar;
  @JsonKey(name: "time_refresh_star")
  String? timeRefreshStar;
  @JsonKey(name: "hibernation", defaultValue: false)
  bool? hibernnation;
  String? wallet; //set string is temporary because backend not return int
  @JsonKey(defaultValue: 0)
  int? credit;
  String? phone;
  @JsonKey(name: "my_referral_code")
  String? myReferralCode;
  @JsonKey(name: "referral_code_entered")
  String? referralCodeEntered;
  String? gender;
  @JsonKey(name: "delete_at_temp", defaultValue: false)
  bool? deleteAtTemp;
  @JsonKey(name: "comment_delete")
  String? commentDelete;
  @JsonKey(name: "amount_appraisal_profile")
  int? amountAppraisalProfile;
  @JsonKey(name: "amount_review_profile_today")
  int? amountReviewProfileToday;
  @JsonKey(name: "access_token")
  String? accessToken;
  @JsonKey(name: "refesh_token")
  String? refreshToken;
  List<String>? images;
  @JsonKey(name: "image_real")
  String? imageReal;
  List<String>? personality;
  @JsonKey(name: "lifestyle")
  List<String>? lifeStyle;
  List<String>? charm;
  List<String>? hobby;
  @JsonKey(name: "lovestyle")
  List<String>? loveStyle;
  @JsonKey(name: "datestyle")
  List<String>? dateStyle;
  @JsonKey(name: "introduce")
  String? introduction;
  @JsonKey(name: "qa_list")
  List<Map<String, dynamic>>? answerList;
  @JsonKey(name: "is_first_accepted")
  bool? isFirstAccepted;
  @JsonKey(name: "name")
  String? nickname;
  //DateModel? date;
  @JsonKey(name: "user_setting")
  //UserSetting? userSetting;
  int? age;
  String? dob;
  //List<BadgetAppraisal>? badgetAppraisals;
  //List<BadgetAppraisal>? badgetAdditionalAppraisals;
  @JsonKey(name: "is_mylistcard")
  bool? isMyListCard;
  bool? isCharged;

  Account({
    required this.id,
    this.email,
    this.password,
    this.location,
    this.job,
    this.height,
    this.physique,
    this.area,
    this.education,
    this.alcohol,
    this.religion,
    this.blood,
    this.smoke,
    this.typeAppraisal,
    this.stateAppraisal,
    this.star,
    this.isRefreshStar,
    this.timeRefreshStar,
    this.hibernnation,
    this.credit,
    this.phone,
    this.myReferralCode,
    this.referralCodeEntered,
    this.gender,
    this.deleteAtTemp,
    this.commentDelete,
    this.amountAppraisalProfile,
    this.amountReviewProfileToday,
    this.accessToken,
    this.refreshToken,
    this.images,
    this.imageReal,
    this.personality,
    this.lifeStyle,
    this.charm,
    this.hobby,
    this.loveStyle,
    this.dateStyle,
    this.introduction,
    this.answerList,
    this.isFirstAccepted,
    this.nickname,
   // this.date,
   // this.userSetting,
    this.age,
    this.dob,
    //this.badgetAppraisals,
    //this.badgetAdditionalAppraisals,
    this.isMyListCard,
    this.isCharged,
    this.wallet,
  });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);

  Account copyWith({
    String? id,
    String? username,
    String? email,
    String? password,
    Map<String, String>? location,
    String? job,
    String? height,
    String? physique,
    String? area,
    String? education,
    String? alcohol,
    String? religion,
    String? blood,
    String? smoke,
    String? typeAppraisal,
    String? stateAppraisal,
    double? star,
    bool? isRefreshStar,
    String? timeRefreshStar,
    bool? hibernnation,
    int? credit,
    String? phone,
    String? myReferralCode,
    String? referralCodeEntered,
    String? gender,
    bool? deleteAtTemp,
    String? commentDelete,
    int? amountAppraisalProfile,
    int? amountReviewProfileToday,
    String? accessToken,
    String? refreshToken,
    List<String>? images,
    String? imageReal,
    List<String>? personality,
    List<String>? lifeStyle,
    List<String>? charm,
    List<String>? hobby,
    List<String>? loveStyle,
    List<String>? dateStyle,
    String? introduction,
    List<Map<String, dynamic>>? answerList,
    bool? isFirstAccepted,
    String? nickname,
    //DateModel? date,
    //UserSetting? userSetting,
    int? age,
    String? dob,
    //List<BadgetAppraisal>? badgetAppraisals,
    //List<BadgetAppraisal>? badgetAdditionalAppraisals,
    bool? isMyListCard,
    bool? isCharged,
    String? wallet,
  }) {
    return Account(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
      location: location ?? this.location,
      job: job ?? this.job,
      height: height ?? this.height,
      physique: physique ?? this.physique,
      area: area ?? this.area,
      education: education ?? this.education,
      alcohol: alcohol ?? this.alcohol,
      religion: religion ?? this.religion,
      blood: blood ?? this.blood,
      smoke: smoke ?? this.smoke,
      typeAppraisal: typeAppraisal ?? this.typeAppraisal,
      stateAppraisal: stateAppraisal ?? this.stateAppraisal,
      star: star ?? this.star,
      isRefreshStar: isRefreshStar ?? this.isRefreshStar,
      timeRefreshStar: timeRefreshStar ?? this.timeRefreshStar,
      hibernnation: hibernnation ?? this.hibernnation,
      credit: credit ?? this.credit,
      phone: phone ?? this.phone,
      myReferralCode: myReferralCode ?? this.myReferralCode,
      referralCodeEntered: referralCodeEntered ?? this.referralCodeEntered,
      gender: gender ?? this.gender,
      deleteAtTemp: deleteAtTemp ?? this.deleteAtTemp,
      commentDelete: commentDelete ?? this.commentDelete,
      amountAppraisalProfile: amountAppraisalProfile ?? this.amountAppraisalProfile,
      amountReviewProfileToday: amountReviewProfileToday ?? this.amountReviewProfileToday,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      images: images ?? this.images,
      imageReal: imageReal ?? this.imageReal,
      personality: personality ?? this.personality,
      lifeStyle: lifeStyle ?? this.lifeStyle,
      charm: charm ?? this.charm,
      hobby: hobby ?? this.hobby,
      loveStyle: loveStyle ?? this.loveStyle,
      dateStyle: dateStyle ?? this.dateStyle,
      introduction: introduction ?? this.introduction,
      answerList: answerList ?? this.answerList,
      isFirstAccepted: isFirstAccepted ?? this.isFirstAccepted,
      nickname: nickname ?? this.nickname,
      //date: date ?? this.date,
      //userSetting: userSetting ?? this.userSetting,
      age: age ?? this.age,
      dob: dob ?? this.dob,
      //badgetAppraisals: badgetAppraisals ?? this.badgetAppraisals,
      //badgetAdditionalAppraisals: badgetAdditionalAppraisals ?? this.badgetAdditionalAppraisals,
      isMyListCard: isMyListCard ?? this.isMyListCard,
      isCharged: isCharged ?? this.isCharged,
      wallet: wallet ?? this.wallet,
    );
  }
}