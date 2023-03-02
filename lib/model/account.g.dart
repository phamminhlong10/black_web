// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: json['id'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      location: (json['location'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      job: json['job'] as String?,
      height: json['height'] as String?,
      physique: json['physique'] as String?,
      area: json['area'] as String?,
      education: json['education'] as String?,
      alcohol: json['alcohol'] as String?,
      religion: json['religion'] as String?,
      blood: json['blood'] as String?,
      smoke: json['smoke'] as String?,
      typeAppraisal: json['type_appraisal'] as String?,
      stateAppraisal: json['state_appraisal'] as String?,
      star: (json['star'] as num?)?.toDouble(),
      isRefreshStar: json['is_refresh_star'] as bool? ?? false,
      timeRefreshStar: json['time_refresh_star'] as String?,
      hibernnation: json['hibernation'] as bool? ?? false,
      credit: json['credit'] as int? ?? 0,
      phone: json['phone'] as String?,
      myReferralCode: json['my_referral_code'] as String?,
      referralCodeEntered: json['referral_code_entered'] as String?,
      gender: json['gender'] as String?,
      deleteAtTemp: json['delete_at_temp'] as bool? ?? false,
      commentDelete: json['comment_delete'] as String?,
      amountAppraisalProfile: json['amount_appraisal_profile'] as int?,
      amountReviewProfileToday: json['amount_review_profile_today'] as int?,
      accessToken: json['access_token'] as String?,
      refreshToken: json['refesh_token'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imageReal: json['image_real'] as String?,
      personality: (json['personality'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyle: (json['lifestyle'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      charm:
          (json['charm'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hobby:
          (json['hobby'] as List<dynamic>?)?.map((e) => e as String).toList(),
      loveStyle: (json['lovestyle'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dateStyle: (json['datestyle'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      introduction: json['introduce'] as String?,
      answerList: (json['qa_list'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      isFirstAccepted: json['is_first_accepted'] as bool?,
      nickname: json['name'] as String?,
      age: json['user_setting'] as int?,
      dob: json['dob'] as String?,
      isMyListCard: json['is_mylistcard'] as bool?,
      isCharged: json['isCharged'] as bool?,
      wallet: json['wallet'] as String?,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'location': instance.location,
      'job': instance.job,
      'height': instance.height,
      'physique': instance.physique,
      'area': instance.area,
      'education': instance.education,
      'alcohol': instance.alcohol,
      'religion': instance.religion,
      'blood': instance.blood,
      'smoke': instance.smoke,
      'type_appraisal': instance.typeAppraisal,
      'state_appraisal': instance.stateAppraisal,
      'star': instance.star,
      'is_refresh_star': instance.isRefreshStar,
      'time_refresh_star': instance.timeRefreshStar,
      'hibernation': instance.hibernnation,
      'wallet': instance.wallet,
      'credit': instance.credit,
      'phone': instance.phone,
      'my_referral_code': instance.myReferralCode,
      'referral_code_entered': instance.referralCodeEntered,
      'gender': instance.gender,
      'delete_at_temp': instance.deleteAtTemp,
      'comment_delete': instance.commentDelete,
      'amount_appraisal_profile': instance.amountAppraisalProfile,
      'amount_review_profile_today': instance.amountReviewProfileToday,
      'access_token': instance.accessToken,
      'refesh_token': instance.refreshToken,
      'images': instance.images,
      'image_real': instance.imageReal,
      'personality': instance.personality,
      'lifestyle': instance.lifeStyle,
      'charm': instance.charm,
      'hobby': instance.hobby,
      'lovestyle': instance.loveStyle,
      'datestyle': instance.dateStyle,
      'introduce': instance.introduction,
      'qa_list': instance.answerList,
      'is_first_accepted': instance.isFirstAccepted,
      'name': instance.nickname,
      'user_setting': instance.age,
      'dob': instance.dob,
      'is_mylistcard': instance.isMyListCard,
      'isCharged': instance.isCharged,
    };
