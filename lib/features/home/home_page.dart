import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_app/core/presentation/app_assets_string.dart';
import 'package:resume_app/features/home/widget/custom_button.dart';
import 'package:resume_app/features/home/widget/url_laucher.dart';

import '../../core/presentation/app_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppText.appHomeViewAppBarText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0.h),
            Container(
              height: 150.0.h,
              width: 150.0.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0.r),
                image: const DecorationImage(
                    image: AssetImage(AppAssetsString.mainImgUrl),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Center(
              child: Text(
                AppText.appHomeWelcomeText,
                style:
                    TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0.w, right: 20.0.w, top: 20.0.h, bottom: 20.0.h),
              child: Container(
                width: double.infinity,
                height: 500.0.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0.r),
                    color: const Color(0xFF0E3E3E3)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        children: [
                          const Text(AppText.appHomeFirstNameLabelText),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            AppText.appHomeFirstNameText,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0.sp),
                          ),
                          SizedBox(
                            height: 20.0.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(AppText.appHomeLastNameLabelText),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            AppText.appHomeLastNameText,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0.sp),
                          ),
                          SizedBox(
                            height: 20.0.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(AppText.appHomeEmailText),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            AppText.appHomeEmailAddressText,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0.sp),
                          ),
                          SizedBox(
                            height: 20.0.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(AppText.appHomePhoneLabelText),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            AppText.appHomePhoneText,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0.sp),
                          ),
                          SizedBox(
                            height: 20.0.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(AppText.appHomeStackLabelText),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          const Text(
                            AppText.appHomeStackText,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0.h,
                          ),
                        ],
                      ),
                      RoundWhiteButton(
                        label: AppText.appHomeUseGitHubButtonText,
                        onTap: launchURL1,
                        height: 40.0.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(AppText.appHomeKnowMoreText),
            SizedBox(
              height: 10.0.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundWhiteButton(
                    label: AppText.appHomeTwitterButtonText,
                    onTap: launchURL3,
                    height: 40.0.h,
                  ),
                  RoundWhiteButton(
                    label: AppText.appHomeLinkedinButtonText,
                    onTap: launchURL2,
                    height: 40.0.h,
                  ),
                  RoundWhiteButton(
                    label: AppText.appHomeGitHubButtonText,
                    onTap: launchURL1,
                    height: 40.0.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
