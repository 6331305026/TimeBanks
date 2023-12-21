import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'th'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? thText = '',
  }) =>
      [enText, thText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    '1kj8k033': {
      'en': 'Welcome ',
      'th': '',
    },
    'xwo55tsa': {
      'en': 'Deanna Dickson',
      'th': '',
    },
    'fd81119z': {
      'en': 'You have total ',
      'th': 'คุณมีทั้งหมด',
    },
    '2zdwsele': {
      'en': 'Time-Credit (TC)',
      'th': 'เครดิตเวลา (TC)',
    },
    '0jmy3m9t': {
      'en': '10',
      'th': '10',
    },
    'wn8l10qf': {
      'en': 'Missions',
      'th': 'ภารกิจ',
    },
    'sf3qtqbb': {
      'en': 'History',
      'th': 'ประวัติ',
    },
    'bugmau49': {
      'en': 'My Mission',
      'th': 'ภารกิจของฉัน',
    },
    'ipks6qug': {
      'en': 'My Request',
      'th': 'คำขอของฉัน',
    },
    'zzq8a64w': {
      'en': 'ข่าวสาร',
      'th': '',
    },
    'e52j7uc5': {
      'en': 'มฟล.จัดการประชุมเครือข่ายนักวิชาการ',
      'th': '',
    },
    'd74rufsc': {
      'en':
          'เมื่อวันที่ 3 พฤศจิกายน 2566 ที่โรงแรม The Imperial Golden Triangle Resort อำเภอเชียงแสน จังหวัดเชียงราย ',
      'th': '',
    },
    'ab7tvigt': {
      'en': 'เพิ่มเติม',
      'th': '',
    },
    '9sa2df8d': {
      'en': 'สำนักวิชาการแพทย์บูรณาการ',
      'th': '',
    },
    'k3kyoyk4': {
      'en':
          'มหาวิทยาลัยแม่ฟ้าหลวง (มฟล.) โดย สำนักวิชาการแพทย์บูรณาการ จัดพิธียกขันตั้งไหว้สาคุณูปมาจารย์และพิธีมอบเสื้อกาวน์ ประจำปีการศึกษา 2566',
      'th': '',
    },
    'h4hg8nh7': {
      'en': 'เพิ่มเติม',
      'th': '',
    },
    '7drzoc0g': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // MissionBoard
  {
    'am1gges2': {
      'en': 'Mission Board',
      'th': 'กระดานภารกิจ',
    },
    '45bf19jg': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    '6fjtt3if': {
      'en': 'Filter by:',
      'th': 'กรองตาม:',
    },
    'iuqmlj2w': {
      'en': 'Option 1',
      'th': 'ตัวเลือกที่ 1',
    },
    '9om9d6zq': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    'vvk8qivw': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'k4238m58': {
      'en': '0',
      'th': '0',
    },
    '4afd12su': {
      'en': '5',
      'th': '5',
    },
    '2ifjypvu': {
      'en': '10',
      'th': '10',
    },
    'mt57v2ws': {
      'en': '15',
      'th': '15',
    },
    't1cxyzjg': {
      'en': '20',
      'th': '20',
    },
    'df4oldi1': {
      'en': 'Date',
      'th': 'วันที่',
    },
    'ekv4oy42': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    '1jk9wptr': {
      'en': 'ช่วยยกของ',
      'th': 'ช่วยยกของ',
    },
    '4zz7ao1b': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': 'อาคาร D1 ห้อง 301',
    },
    'ft6wz798': {
      'en': 'ต้องการนศ.ช่วยงาน ช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
      'th': 'ต้องการให้นศ.ช่วยงานช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
    },
    'k4agxugu': {
      'en': 'Appointment:',
      'th': 'การนัดหมาย:',
    },
    '7ncwt4ql': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    'm30ayr7i': {
      'en': 'Reward:',
      'th': 'รางวัล:',
    },
    's02zhh8t': {
      'en': '2 TC',
      'th': '2 ทีซี',
    },
    'hodilbh7': {
      'en': 'See Details',
      'th': 'ดูรายละเอียด',
    },
    'tqdemgxs': {
      'en': 'ต้องการคนสอนการบ้าน',
      'th': 'ช่วยยกของ',
    },
    'ol8zdaw5': {
      'en': 'อาคาร D1 ห้อง 203',
      'th': 'อาคาร D1 ห้อง 301',
    },
    'n19ps6zw': {
      'en': 'ต้องการคนช่วยสอนการบ้านภาษาไทย เพื่อที่จะสอบในวันจันทร์ที่จะมาถึง',
      'th': 'ต้องการให้นศ.ช่วยงานช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
    },
    'c6vurpc1': {
      'en': 'Appointment:',
      'th': 'วันนัดหมาย:',
    },
    '68z890kk': {
      'en': '07/09/2023',
      'th': '02/08/2023',
    },
    'jgwn8oby': {
      'en': 'Reward:',
      'th': 'รางวัล:',
    },
    '17qhl3yd': {
      'en': '3 TC',
      'th': '2 TC',
    },
    'alu7mphh': {
      'en': 'See Details',
      'th': 'ดูรายละเอียด',
    },
    'jwwqnn12': {
      'en': 'ต้องการคนพาไปโรงพยาบาล',
      'th': 'ช่วยยกของ',
    },
    'pkwclzw0': {
      'en': 'อาคาร D1 ห้อง 102',
      'th': 'อาคาร D1 ห้อง 301',
    },
    'qgpmq9uz': {
      'en': 'ต้องการคนช่วยพาไปส่งที่โรงพยาบาลแม่ฟ้าหลวง',
      'th': 'ต้องการให้นศ.ช่วยงานช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
    },
    'lx4lredo': {
      'en': 'Appointment:',
      'th': 'วันนัดหมาย:',
    },
    '7fu1lqwg': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    't03ggtb6': {
      'en': 'Reward:',
      'th': 'รางวัล:',
    },
    'c9tsym74': {
      'en': '2 TC',
      'th': '2 TC',
    },
    'whjelr1o': {
      'en': 'See Details',
      'th': 'ดูรายละเอียด',
    },
    'mff0kgyu': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Template
  {
    '9kdgfftt': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // MyMission
  {
    'dtkwx4kg': {
      'en': 'My Mission',
      'th': 'ภารกิจของฉัน',
    },
    'w2whtl58': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    '4euzfa6k': {
      'en': 'Filter by:',
      'th': 'กรองตาม:',
    },
    't2vwkxb9': {
      'en': 'Option 1',
      'th': 'ตัวเลือกที่ 1',
    },
    'a31cc333': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    'yqmggomc': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'rbonl3f9': {
      'en': '0',
      'th': '0',
    },
    'g5a8bi67': {
      'en': '5',
      'th': '5',
    },
    'rjnza9fw': {
      'en': '10',
      'th': '10',
    },
    's32um3gn': {
      'en': '15',
      'th': '15',
    },
    'kgf71u9h': {
      'en': '20',
      'th': '20',
    },
    '5em2x9y4': {
      'en': 'Date',
      'th': 'วันที่',
    },
    'tgpceij8': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    '8vp1aj4l': {
      'en': 'ช่วยยกของ',
      'th': 'ช่วยยกของ',
    },
    '7o1fdos9': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': 'อาคาร D1 ห้อง 301',
    },
    'e7ta7gty': {
      'en': 'ต้องการนศ.ช่วยงาน ช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
      'th': 'ต้องการให้นศ.ช่วยงานช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
    },
    '5jb1i839': {
      'en': 'Appointment:',
      'th': 'วันนัดหมาย:',
    },
    'bcvo3bxz': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    '72qdv1ei': {
      'en': 'Reward:',
      'th': 'รางวัล:',
    },
    'ewf5ljg6': {
      'en': '2 TC',
      'th': '2 TC',
    },
    'v7gsfn0g': {
      'en': 'See Details',
      'th': 'ดูรายละเอียด',
    },
    '4mux7pc4': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Starter
  {
    'c3agq6re': {
      'en': 'Let\'s start using time banking!',
      'th': 'มาเริ่มใช้ธนาคารเวลากันเถอะ!',
    },
    'nhdt7gc2': {
      'en': 'Collect Time Credits to create a livable society.',
      'th': 'รวบรวมเครดิตเวลาเพื่อสร้างสังคมที่น่าอยู่',
    },
    '889hk1e0': {
      'en': 'Let’s Start!',
      'th': 'เริ่มกันเลย!',
    },
    'gr0jy7yd': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Login
  {
    'hqck0oro': {
      'en': 'Login',
      'th': 'เข้าสู่ระบบ',
    },
    'lsv4yc4p': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    '76uaocw5': {
      'en': 'Email Address',
      'th': 'ที่อยู่อีเมล',
    },
    'qtkmozfc': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    'fesv2via': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    'fq057on1': {
      'en': 'Remember me',
      'th': 'จดจำฉัน',
    },
    'vdmnq7b6': {
      'en': 'Forgot Password?',
      'th': 'ลืมรหัสผ่าน?',
    },
    '4nhtzws7': {
      'en': 'Next',
      'th': 'ต่อไป',
    },
    'mgl2su36': {
      'en': 'Not have an account?',
      'th': 'ยังมีบัญชี?',
    },
    'aiy14kld': {
      'en': 'Create an account',
      'th': 'สร้างบัญชี',
    },
    'hs6c8ezy': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Regsiter
  {
    'g09o3o3t': {
      'en': 'Sign up',
      'th': 'ลงทะเบียน',
    },
    'j381f7zs': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    'zom39aar': {
      'en': 'Email Address',
      'th': 'ที่อยู่อีเมล',
    },
    '7kkbh1rm': {
      'en': 'Create your password',
      'th': 'สร้างรหัสผ่าน',
    },
    '7jwtw10j': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    'rmjj76v1': {
      'en': 'Confirm your password',
      'th': 'ยืนยันรหัสผ่านของคุณ',
    },
    'sch0l6f7': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    '98sr6133': {
      'en': 'Next',
      'th': 'ต่อไป',
    },
    '4ytfndva': {
      'en': 'Already have an account?',
      'th': 'มีบัญชีอยู่แล้ว?',
    },
    't5hiaieo': {
      'en': 'Login now',
      'th': 'ลงชื่อเข้าใช้',
    },
    'e1gffrhh': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // RegsiterInfo
  {
    'lim8qzhd': {
      'en': 'Member Information',
      'th': 'ข้อมูลสมาชิก',
    },
    '8zy1knvq': {
      'en': 'First name',
      'th': 'ชื่อจริง',
    },
    'apfyierj': {
      'en': 'First name',
      'th': 'ชื่อจริง',
    },
    'azwn5bpx': {
      'en': 'Last name',
      'th': 'นามสกุล',
    },
    '0lsya23m': {
      'en': 'Last name',
      'th': 'นามสกุล',
    },
    'qqesnnwb': {
      'en': 'Student ID',
      'th': 'รหัสนักศึกษา',
    },
    'o2t8q2ch': {
      'en': 'Student ID',
      'th': 'รหัสนักศึกษา',
    },
    '1q7g1k11': {
      'en': 'School of',
      'th': 'สำนักวิชา',
    },
    'llof148k': {
      'en': 'School of',
      'th': 'สำนักวิชา',
    },
    '2ef042ku': {
      'en': 'Major of',
      'th': 'สาขาวิชา',
    },
    'dhdd0tyz': {
      'en': 'Major of',
      'th': 'สาขาวิชา',
    },
    'ml2ctdz5': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    'xeqkpfdw': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    'l2obnl1n': {
      'en': 'Next',
      'th': 'ต่อไป',
    },
    'ojc3pylk': {
      'en': 'Already have an account?',
      'th': 'มีบัญชีอยู่แล้ว?',
    },
    '10f7kj96': {
      'en': 'Login now',
      'th': 'ลงชื่อเข้าใช้',
    },
    'm9pvc0ja': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // RegsiterVerify
  {
    'nvay17z8': {
      'en': 'Verify Identity',
      'th': 'ยืนยันตัวตน',
    },
    'zyafeteo': {
      'en': 'Example',
      'th': 'ตัวอย่าง',
    },
    '2qlc236w': {
      'en':
          'Please take a clear picture of the front of the card. For speed in verifying identity',
      'th':
          'กรุณาถ่ายรูปด้านหน้าบัตรให้ชัดเจน เพื่อความรวดเร็วในการตรวจสอบตัวตน',
    },
    '7d0d70f4': {
      'en': 'Please upload your student ID card',
      'th': 'กรุณาอัพโหลดบัตรประจำตัวนักศึกษาของคุณ',
    },
    'f1p2eh3m': {
      'en': 'Choose File',
      'th': 'เลือกไฟล์',
    },
    'f1t26wqy': {
      'en': '6331305026.jpeg',
      'th': '6331305026.jpeg',
    },
    'kzm5e7my': {
      'en': 'Done',
      'th': 'เสร็จสิ้น',
    },
    'b5i7vg2a': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // RegsiterVerifySuccess
  {
    'elx1yzoj': {
      'en': 'You have sent a request',
      'th': 'คุณได้ส่งคำขอยืนยันตัวตนเรียบร้อยแล้ว',
    },
    'kz60xhm3': {
      'en': 'We will verify your identity as soon as possible',
      'th': 'เราจะตรวจสอบตัวตนของคุณโดยเร็วที่สุด',
    },
    'dbkn32a0': {
      'en': 'Let\'s Start!',
      'th': 'เริ่มกันเลย!',
    },
    'h2p82x1l': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // ForgotPassword
  {
    'ysiqyf1w': {
      'en': 'Forgot Password?',
      'th': 'ลืมรหัสผ่าน?',
    },
    'n13fhxtj': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    '2sffvssq': {
      'en': 'Email Address',
      'th': 'ที่อยู่อีเมล',
    },
    '2622ygqr': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'th':
          'เราจะส่งอีเมลพร้อมลิงก์เพื่อรีเซ็ตรหัสผ่านของคุณ โปรดป้อนอีเมลที่เชื่อมโยงกับบัญชีของคุณด้านล่าง',
    },
    '29io0mfq': {
      'en': 'Reset Password',
      'th': 'รีเซ็ตรหัสผ่าน',
    },
    'rnk0uvlc': {
      'en': 'Remember the password?',
      'th': 'จดจำรหัสผ่าน?',
    },
    'vvsn9tcr': {
      'en': 'Login now',
      'th': 'ลงชื่อเข้าใช้',
    },
    '333n715r': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // ENSuccessRequest
  {
    'ms0h31zx': {
      'en': 'Congratulations!',
      'th': 'ยินดีด้วย!',
    },
    'q6v42ipn': {
      'en': 'You have completed the request.',
      'th': 'คุณทำภารกิจสำเร็จแล้ว',
    },
    'xrvd981t': {
      'en': 'Done',
      'th': 'ต่อไป',
    },
    'smipe3c5': {
      'en': 'Review of receiving help',
      'th': 'ต่อไป',
    },
    '3vj4e3zx': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // ENAceeptMission
  {
    '8y5crl51': {
      'en': 'You have received the mission',
      'th': 'คุณรับภารกิจแล้ว',
    },
    'fwdnpuo0': {
      'en': 'Please contact the person requesting',
      'th': 'โปรดติดต่อผู้ร้องขอ',
    },
    'hop1dw1n': {
      'en': 'assistance via this phone number',
      'th': 'ให้ช่วยเหลือผ่านทางหมายเลขโทรศัพท์นี้',
    },
    '6kszq21t': {
      'en': '012-3456789',
      'th': '012-3456789',
    },
    'f94klint': {
      'en': 'Done',
      'th': 'เสร็จสิ้น',
    },
    'n136hp0u': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // MyRequest0
  {
    'ek6ip3wf': {
      'en': 'My Request',
      'th': 'คำขอของฉัน',
    },
    '06vb259x': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    '96asbczm': {
      'en': 'Filter by:',
      'th': 'กรองตาม:',
    },
    '8wxiusk9': {
      'en': 'Option 1',
      'th': 'ตัวเลือกที่ 1',
    },
    'mwiesseh': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    'yb3rdnfc': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'zvqmpta0': {
      'en': '0',
      'th': '0',
    },
    '150sr97y': {
      'en': '5',
      'th': '5',
    },
    'w58l8su2': {
      'en': '10',
      'th': '10',
    },
    '7sb0wtes': {
      'en': '15',
      'th': '15',
    },
    'wapohgky': {
      'en': '20',
      'th': '20',
    },
    '92epkobs': {
      'en': 'Date',
      'th': 'วันที่',
    },
    'uwdgmy3q': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'dkqtdfmv': {
      'en': 'Let\'s create a mission to create livable society.',
      'th': 'มาสร้างภารกิจสร้างสังคมน่าอยู่กันเถอะ',
    },
    'tvtgu2q1': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // MyMissionDetail
  {
    '2ds9ft84': {
      'en': 'Mission Detail',
      'th': 'รายละเอียดภารกิจ',
    },
    'k1zetc5f': {
      'en': 'Topic Name:',
      'th': 'ชื่อภารกิจ:',
    },
    'wdtwpmry': {
      'en': 'Topic Name',
      'th': 'ชื่อภารกิจ',
    },
    'qgyd4l2g': {
      'en': 'ช่วยยกของ',
      'th': '',
    },
    'm807zjuz': {
      'en': 'Additional explanation:',
      'th': 'คำอธิบายเพิ่มเติม:',
    },
    't4dpa8vw': {
      'en': 'Additional explanation',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    '6pg738qa': {
      'en': 'ต้องการนศ.ช่วยงาน ช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
      'th': '',
    },
    'npbirqos': {
      'en': 'Location:',
      'th': 'ที่ตั้ง:',
    },
    'xxtps2vp': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    'skg9bvky': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': '',
    },
    'm61nqqas': {
      'en': 'Appointment date:',
      'th': 'วันที่นัดหมาย:',
    },
    'mociahcf': {
      'en': 'Appointment date',
      'th': 'วันที่นัดหมาย',
    },
    'zxe7jef5': {
      'en': '02/08/2023',
      'th': '',
    },
    'zhlzjj7c': {
      'en': 'Phone number:',
      'th': 'หมายเลขโทรศัพท์:',
    },
    'xztbe03c': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    'bqn7yotx': {
      'en': '0963458621',
      'th': '',
    },
    'amjv86j1': {
      'en': 'Earn total',
      'th': 'ได้รับทั้งหมด',
    },
    'tlxoo02f': {
      'en': '2',
      'th': '2',
    },
    'cuwbey49': {
      'en': 'Time-Credit (TC)',
      'th': 'เครดิตเวลา (TC)',
    },
    'h1u428zd': {
      'en': 'Complete Mission',
      'th': 'ทำภารกิจให้สำเร็จ',
    },
    'pui2uans': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // template-c
  {
    'wae1i8n0': {
      'en': 'Mission Detail',
      'th': 'รายละเอียดภารกิจ',
    },
    'lbqrswd2': {
      'en': 'Topic Name:',
      'th': 'ชื่อภารกิจ:',
    },
    'pi4ipyz2': {
      'en': 'Topic Name',
      'th': 'ชื่อภารกิจ',
    },
    'l9k3ee7t': {
      'en': 'Additional explanation:',
      'th': 'คำอธิบายเพิ่มเติม:',
    },
    '0u2zol2q': {
      'en': 'Additional explanation',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    '1zw9gmbl': {
      'en': 'Location:',
      'th': 'ที่ตั้ง:',
    },
    '7nmowaag': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    '22rnhjco': {
      'en': 'Appointment date:',
      'th': 'วันที่นัดหมาย:',
    },
    'lh25usad': {
      'en': 'Appointment date',
      'th': 'วันที่นัดหมาย',
    },
    'o4ychfp1': {
      'en': 'Phone number:',
      'th': 'หมายเลขโทรศัพท์:',
    },
    'bmof7z8u': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    'gfnfj2l2': {
      'en': 'Earn total',
      'th': 'ได้รับทั้งหมด',
    },
    '1nptbdcx': {
      'en': '2',
      'th': '2',
    },
    '1608kwxe': {
      'en': 'Time-Credit (TC)',
      'th': 'เครดิตเวลา (TC)',
    },
    '57pki7zz': {
      'en': 'Complete Mission',
      'th': 'ทำภารกิจให้สำเร็จ',
    },
    'u1p64k1w': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // MissionDetails
  {
    '9ucyam79': {
      'en': 'Mission Detail',
      'th': 'รายละเอียดภารกิจ',
    },
    'mrrtqc17': {
      'en': 'Topic Name:',
      'th': 'ชื่อภารกิจ:',
    },
    '54xvruap': {
      'en': '',
      'th': 'ชื่อภารกิจ',
    },
    '5zj8ruzg': {
      'en': 'ช่วยยกของ',
      'th': '',
    },
    'sfd243lu': {
      'en': 'Additional explanation:',
      'th': 'คำอธิบายเพิ่มเติม:',
    },
    'apz0gg8c': {
      'en': '',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    'm97g2hp7': {
      'en': 'ต้องการนศ.ช่วยงาน ช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
      'th': '',
    },
    'mg87i870': {
      'en': 'Location:',
      'th': 'ที่ตั้ง:',
    },
    'ksxhs649': {
      'en': '',
      'th': 'ที่ตั้ง',
    },
    '2tc4fasf': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': '',
    },
    'sfsbin3o': {
      'en': 'Appointment date:',
      'th': 'วันที่นัดหมาย:',
    },
    'izsyd560': {
      'en': '',
      'th': 'วันที่นัดหมาย',
    },
    'cwptkdds': {
      'en': '02/08/2023',
      'th': '',
    },
    '34v3n0ke': {
      'en': 'Phone number:',
      'th': 'หมายเลขโทรศัพท์:',
    },
    '4pceko8t': {
      'en': '',
      'th': 'หมายเลขโทรศัพท์',
    },
    'mc6rd5wf': {
      'en': '0963458621',
      'th': '',
    },
    '4jaibwya': {
      'en': 'Earn total',
      'th': 'ได้รับทั้งหมด',
    },
    'w1xct1am': {
      'en': '2',
      'th': '2',
    },
    'nmeuo310': {
      'en': 'Time-Credit (TC)',
      'th': 'เครดิตเวลา (TC)',
    },
    '1u3atu9c': {
      'en': 'Accept Mission',
      'th': 'รับภารกิจ',
    },
    'qc6sxiym': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // CreateRequests
  {
    'ux6h0r57': {
      'en': 'Create Request',
      'th': 'สร้างคำขอ',
    },
    'zrhcl0oa': {
      'en': 'Topic Name:',
      'th': 'ชื่อภารกิจ:',
    },
    '0rdmoxjp': {
      'en': 'Topic Name',
      'th': 'ชื่อภารกิจ',
    },
    'wp6tzdfn': {
      'en': 'Additional explanation:',
      'th': 'คำอธิบายเพิ่มเติม:',
    },
    'bqaame7o': {
      'en': 'Additional explanation',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    'qugxdq4f': {
      'en': 'Location:',
      'th': 'ที่ตั้ง:',
    },
    'refeum3i': {
      'en': 'Location',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    'dhbt6grj': {
      'en': 'Select appointment date:',
      'th': 'เลือกวันนัดหมาย:',
    },
    't9xe4dgf': {
      'en': 'XX/XX/XXXX',
      'th': 'XX/XX/XXXX',
    },
    'cu8qc7hb': {
      'en': 'Date Picker',
      'th': 'เลือกวันที่',
    },
    'q0qjx6eq': {
      'en': 'Phone number:',
      'th': 'หมายเลขโทรศัพท์:',
    },
    'gcwcpqx8': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    'm5ivb777': {
      'en': 'How many TC will you compensation?',
      'th': 'คุณต้องการมอบเครดิตเวลาเท่าไหร่?',
    },
    '82btvojt': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    'vt6ktahd': {
      'en': 'Create Request',
      'th': 'สร้างคำขอ',
    },
    'duz02imt': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // EditRequests
  {
    'havz283d': {
      'en': 'Edit Request',
      'th': 'แก้ไขคำขอ',
    },
    'ow1m70mr': {
      'en': 'Topic Name:',
      'th': 'ชื่อภารกิจ:',
    },
    '55k151uk': {
      'en': 'Topic Name',
      'th': 'ชื่อภารกิจ',
    },
    '12s61i8x': {
      'en': 'ต้องการคนช่วยพาไปโรงพยาบาล',
      'th': '',
    },
    '0mi1cphq': {
      'en': 'Additional explanation:',
      'th': 'คำอธิบายเพิ่มเติม:',
    },
    'vvdve9se': {
      'en': '',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    'owj0artd': {
      'en': 'ต้องการนศ.ช่วยงาน ช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
      'th': '',
    },
    'py8k1ehp': {
      'en': 'Location:',
      'th': 'ที่ตั้ง:',
    },
    '2wpiahh3': {
      'en': 'Location',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    'odjqflu5': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': '',
    },
    'zhjir6zz': {
      'en': 'Select appointment date:',
      'th': 'เลือกวันนัดหมาย:',
    },
    '9pph3ptx': {
      'en': 'XX/XX/XXXX',
      'th': 'XX/XX/XXXX',
    },
    'wwf1vi8s': {
      'en': '02/08/2023',
      'th': '',
    },
    'faiktbwb': {
      'en': 'Date Picker',
      'th': 'เลือกวันที่',
    },
    'a4fdrkdp': {
      'en': 'Phone number:',
      'th': 'หมายเลขโทรศัพท์:',
    },
    'in3tuert': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    't0t4hnix': {
      'en': '0963458621',
      'th': '',
    },
    'pvr93koz': {
      'en': 'How many TC will you compensation?',
      'th': 'คุณจะชดเชย TC กี่คน?',
    },
    'oto4vn38': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    '7h09dsfd': {
      'en': 'Save Request',
      'th': 'บันทึกคำขอ',
    },
    'zoe17zzq': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // MyRequestDetail
  {
    '1suy0fvt': {
      'en': 'Request Detail',
      'th': 'รายละเอียดคำขอ',
    },
    'v9egfvy7': {
      'en': 'Topic Name:',
      'th': 'ชื่อภารกิจ:',
    },
    'zw1zvfvq': {
      'en': 'Topic Name',
      'th': 'ชื่อภารกิจ',
    },
    'ap24lo9q': {
      'en': 'ต้องการคนช่วยพาไปโรงพยาบาล',
      'th': '',
    },
    'fh04e9qy': {
      'en': 'Additional explanation:',
      'th': 'คำอธิบายเพิ่มเติม:',
    },
    'o799md7v': {
      'en': '',
      'th': 'คำอธิบายเพิ่มเติม',
    },
    'v4k7b7ih': {
      'en': 'ต้องการนศ.ช่วยงาน ช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
      'th': '',
    },
    'p7ds1uu4': {
      'en': 'Location:',
      'th': 'ที่ตั้ง:',
    },
    'xcw27pz3': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    'tv3lcpdt': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': '',
    },
    '3oveqi0f': {
      'en': 'Appointment date:',
      'th': 'วันที่นัดหมาย:',
    },
    'ui8phbfd': {
      'en': 'Appointment date',
      'th': 'วันที่นัดหมาย',
    },
    '35inl4re': {
      'en': '02/08/2023',
      'th': '',
    },
    'qn25kojx': {
      'en': 'Phone number:',
      'th': 'หมายเลขโทรศัพท์:',
    },
    'on44gclg': {
      'en': 'Phone number',
      'th': 'หมายเลขโทรศัพท์',
    },
    'ckfi57zc': {
      'en': '0963458621',
      'th': '',
    },
    '0ieflfey': {
      'en': 'Earn total',
      'th': 'รับทั้งหมด',
    },
    'u2la85mm': {
      'en': '2',
      'th': '2',
    },
    'hhxoam91': {
      'en': 'Time-Credit (TC)',
      'th': 'เครดิตเวลา (TC)',
    },
    'sjtmz74p': {
      'en': 'Scan QR code to pay TC',
      'th': 'สร้างรหัส QR เพื่อชำระ TC',
    },
    'v6cwqdfv': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Other
  {
    '2u0rrxcm': {
      'en': 'My Account',
      'th': 'บัญชีของฉัน',
    },
    'c3o5h0po': {
      'en': 'Deanna',
      'th': 'วิชชุดา จันทร์ทอง',
    },
    '7moxeh2r': {
      'en': ' Dickson',
      'th': '',
    },
    'vi83o2fr': {
      'en': 'Kimed23087@gmail.com',
      'th': 'Kimed23087@gmail.com',
    },
    '9zpco01g': {
      'en': '012-3456789',
      'th': '012-3456789',
    },
    '5zhtno2n': {
      'en': 'Student ID:',
      'th': 'รหัสนักศึกษา:',
    },
    'k5ag8lfu': {
      'en': '6331305026',
      'th': '6331305026',
    },
    '8y1ol0cy': {
      'en': 'School of:',
      'th': 'สำนักวิชา:',
    },
    'gl308rud': {
      'en': 'Kimed23087@gmail.com',
      'th': 'Kimed23087@gmail.com',
    },
    'hvj3q3k0': {
      'en': 'Major of:',
      'th': 'สาขาวิชา:',
    },
    'lu52ccp9': {
      'en': '012-3456789',
      'th': '012-3456789',
    },
    '7gqje9ns': {
      'en': 'Already Verify Identity',
      'th': 'ยืนยันตัวตนแล้ว',
    },
    'er8cmmn6': {
      'en': 'Log Out',
      'th': 'ออกจากระบบ',
    },
    'zgwfrni6': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // MyRequest
  {
    'vfc9ucew': {
      'en': 'My Request',
      'th': 'คำขอของฉัน',
    },
    '2zzh43ea': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    '9x3pckoa': {
      'en': 'Filter by:',
      'th': 'กรองตาม:',
    },
    'l85ruo0e': {
      'en': 'Option 1',
      'th': 'ตัวเลือกที่ 1',
    },
    'kz81nbad': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    '67pljz9o': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'mf52qejx': {
      'en': '0',
      'th': '0',
    },
    '7y6zao7c': {
      'en': '5',
      'th': '5',
    },
    'm29wl818': {
      'en': '10',
      'th': '10',
    },
    'lp8cojv6': {
      'en': '15',
      'th': '15',
    },
    'juz6nirt': {
      'en': '20',
      'th': '20',
    },
    'iayvm7my': {
      'en': 'Date',
      'th': 'วันที่',
    },
    'xlg2v5x1': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'k76i4e77': {
      'en': 'ต้องการคนพาไปโรงพยาบาล',
      'th': 'ช่วยยกของ',
    },
    '63pdxlyz': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': 'อาคาร D1 ห้อง 301',
    },
    '90rxoo8g': {
      'en': 'ต้องการคนช่วยพาไปส่งที่โรงพยาบาลแม่ฟ้าหลวง',
      'th': 'ต้องการให้นศ.ช่วยงานช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
    },
    'd6fy3gnc': {
      'en': 'Appointment:',
      'th': 'การนัดหมาย:',
    },
    'ovy69wf7': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    'nkx71nl6': {
      'en': 'Reward:',
      'th': 'รางวัล:',
    },
    'zy7j3048': {
      'en': '2 TC',
      'th': '2 TC',
    },
    'xawbsq9r': {
      'en': 'See Details',
      'th': 'ดูรายละเอียด',
    },
    'ykg2u32g': {
      'en': 'ต้องการคนสอนการบ้าน',
      'th': 'ช่วยยกของ',
    },
    '2mqbogbv': {
      'en': 'อาคาร D1 ห้อง 301',
      'th': 'อาคาร D1 ห้อง 301',
    },
    'swpiqkdu': {
      'en': 'ต้องการคนช่วยสอนการบ้านภาษาไทย เพื่อที่จะสอบในวันจันทร์ที่จะมาถึง',
      'th': 'ต้องการให้นศ.ช่วยงานช่วยยกของจัดห้องในกิจกรรม Hackathon 2023',
    },
    '0w05g95x': {
      'en': 'Appointment:',
      'th': 'วันนัดหมาย:',
    },
    'pgv4mpop': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    'lsoclu5v': {
      'en': 'Reward:',
      'th': 'รางวัล:',
    },
    'n87ssafa': {
      'en': '2 TC',
      'th': '2 TC',
    },
    'qphueuft': {
      'en': 'See Details',
      'th': 'ดูรายละเอียด',
    },
    'aa25g22j': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Scanning
  {
    '28ug3emx': {
      'en': 'Scan to receive Time-Credits (TC)',
      'th': 'สแกนเพื่อรับเครดิตเวลา (TC)',
    },
    'hj6uzofn': {
      'en': 'Select Photo',
      'th': 'เลือกภาพถ่าย',
    },
    'pgoxa72k': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // QR
  {
    'pp1yaesd': {
      'en': 'Generate QR code to pay TC',
      'th': 'สร้างรหัส QR เพื่อชำระ TC',
    },
    '61scehmn': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // History
  {
    '003asmu0': {
      'en': 'My History',
      'th': 'กระดานภารกิจ',
    },
    'hjkz1zv6': {
      'en': '1 Hour = 1 Time-Credit (TC)',
      'th': '1 ชั่วโมง = 1 เครดิตเวลา (TC)',
    },
    'dey734h4': {
      'en': 'Filter by:',
      'th': 'กรองตาม:',
    },
    'mhz1v09l': {
      'en': 'Option 1',
      'th': 'ตัวเลือกที่ 1',
    },
    'jwwhyex5': {
      'en': 'Location',
      'th': 'ที่ตั้ง',
    },
    'n7va6xrn': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    'n4xujst0': {
      'en': '0',
      'th': '0',
    },
    'ptp8291d': {
      'en': '5',
      'th': '5',
    },
    'ge5duob9': {
      'en': '10',
      'th': '10',
    },
    'rnwqp0xz': {
      'en': '15',
      'th': '15',
    },
    'phfwe0fm': {
      'en': '20',
      'th': '20',
    },
    'quo67hsr': {
      'en': 'Date',
      'th': 'วันที่',
    },
    'bsl338pm': {
      'en': 'Search for an item...',
      'th': 'ค้นหารายการ...',
    },
    '8k2c9o1i': {
      'en': 'ช่วยยกของ',
      'th': 'ช่วยยกของ',
    },
    'juop1afc': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    'd5qyxxfn': {
      'en': '12:38',
      'th': '12:38',
    },
    'btclamb1': {
      'en': '2',
      'th': '2',
    },
    'kx0y7oxr': {
      'en': 'TC',
      'th': 'TC',
    },
    'll1opgyu': {
      'en': 'Done',
      'th': 'เสร็จสิ้น',
    },
    'zj3ex1rl': {
      'en': 'ต้องการคนสอนการบ้าน',
      'th': 'ช่วยยกของ',
    },
    'sq12mm7y': {
      'en': '07/09/2023',
      'th': '02/08/2023',
    },
    '4i2k862p': {
      'en': '18:31',
      'th': '12:38',
    },
    'm8gq6yls': {
      'en': '2',
      'th': '2',
    },
    'xt86t0wb': {
      'en': 'TC',
      'th': 'TC',
    },
    'dsiv0zqj': {
      'en': 'Done',
      'th': 'เสร็จสิ้น',
    },
    'jnrg388i': {
      'en': 'ต้องการคนพาไปโรงพยาบาล',
      'th': 'ช่วยยกของ',
    },
    'uxriu421': {
      'en': '02/08/2023',
      'th': '02/08/2023',
    },
    '0op0vn46': {
      'en': '10:11',
      'th': '12:38',
    },
    '8ofcwuuy': {
      'en': '2',
      'th': '2',
    },
    '7bg6a1zd': {
      'en': 'TC',
      'th': 'TC',
    },
    '4zl0gmw4': {
      'en': 'Done',
      'th': 'เสร็จสิ้น',
    },
    'u49hx2pk': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Rating
  {
    'id6thlo5': {
      'en': 'Review of receiving help',
      'th': 'คุณรับภารกิจแล้ว',
    },
    'ncm9x4w3': {
      'en': 'Please rate the assistance',
      'th': 'โปรดติดต่อผู้ร้องขอ',
    },
    '9e8mplip': {
      'en': 'according to your satisfaction.',
      'th': 'ให้ช่วยเหลือผ่านทางหมายเลขโทรศัพท์นี้',
    },
    'c3kane5k': {
      'en': 'Review',
      'th': 'เสร็จสิ้น',
    },
    'sx3h6fru': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // ConfirmTransaction
  {
    '6ae6q7g8': {
      'en': 'Confirm information',
      'th': 'สร้างคำขอ',
    },
    'h4gzlulr': {
      'en': 'My Account',
      'th': '',
    },
    'a52pobvn': {
      'en': 'Deanna Dickson',
      'th': '',
    },
    'k5u6dzsj': {
      'en': 'To Account',
      'th': '',
    },
    '4nieiwzm': {
      'en': 'Shreya Waters',
      'th': '',
    },
    'p39h7nax': {
      'en': 'Total:',
      'th': '',
    },
    'czn6hrpt': {
      'en': '2 TC',
      'th': '',
    },
    'dc3pnf4z': {
      'en': 'Be wary of falling victim to scams.',
      'th': '',
    },
    '211nb520': {
      'en':
          'Please check the destination account information is correct. Once confirmed, changes cannot be made.',
      'th': '',
    },
    's4lo65cv': {
      'en': 'Cancel',
      'th': 'ทำภารกิจให้สำเร็จ',
    },
    '9zoige4g': {
      'en': 'Confirm',
      'th': 'ทำภารกิจให้สำเร็จ',
    },
    'y1zifqc9': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // ENSuccessMission
  {
    'r97tni5q': {
      'en': 'Congratulations!',
      'th': 'ยินดีด้วย!',
    },
    'v1a9i0wk': {
      'en': 'You have completed the mission.',
      'th': 'คุณทำภารกิจสำเร็จแล้ว',
    },
    'cg4xr3u5': {
      'en': 'Done',
      'th': 'ต่อไป',
    },
    'rulmflsm': {
      'en': 'Home',
      'th': 'หน้าหลัก',
    },
  },
  // Miscellaneous
  {
    '9lqlmrry': {
      'en': '',
      'th': '',
    },
    'es2ssfa8': {
      'en': '',
      'th': '',
    },
    'ckl2f0pc': {
      'en': '',
      'th': '',
    },
    '817vuapi': {
      'en': '',
      'th': '',
    },
    'l9al5jaa': {
      'en': '',
      'th': '',
    },
    'zfur5wx5': {
      'en': '',
      'th': '',
    },
    'gidmdljt': {
      'en': '',
      'th': '',
    },
    't5ckdffn': {
      'en': '',
      'th': '',
    },
    't504iybf': {
      'en': '',
      'th': '',
    },
    'dqynja0r': {
      'en': '',
      'th': '',
    },
    'o77n23w9': {
      'en': '',
      'th': '',
    },
    'dti3wysx': {
      'en': '',
      'th': '',
    },
    'utrr7hgs': {
      'en': '',
      'th': '',
    },
    'iqfgb56h': {
      'en': '',
      'th': '',
    },
    'noynm5x1': {
      'en': '',
      'th': '',
    },
    '0tdg1njl': {
      'en': '',
      'th': '',
    },
    'osq1wfs1': {
      'en': '',
      'th': '',
    },
    '8b9zxs6p': {
      'en': '',
      'th': '',
    },
    'id0mnw3j': {
      'en': '',
      'th': '',
    },
    'jmpdt01g': {
      'en': '',
      'th': '',
    },
    'c3vry80k': {
      'en': '',
      'th': '',
    },
    'jfo3eilj': {
      'en': '',
      'th': '',
    },
    'wrf98ob8': {
      'en': '',
      'th': '',
    },
  },
].reduce((a, b) => a..addAll(b));
