import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../util/dimensions.dart';
import '../../util/images.dart';
import '../../util/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final FocusNode _usernameNode = FocusNode();
  final FocusNode _phoneNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(Images.logo, width: 120),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              )
            ],
          ),
          Expanded(
            child: Scrollbar(
                child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              //.all(Dimensions.paddingSizeDefault),
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Container(
                  width: 700,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          blurRadius: 5,
                          spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: Dimensions.paddingSizeSmall),
                        // Center(child: Text(AppConstants.APP_NAME, style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeLarge))),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.paddingSizeDefault,
                          ),
                          child: GradientText(
                            'sign_up',
                            style: robotoBlack.copyWith(fontSize: 24),
                            colors: const [
                              Colors.redAccent,
                              Colors.orange,
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          constraints:
                              BoxConstraints(maxWidth: Get.width * 2 / 3),
                          child: Text(
                              'Đăng ký để bắt đầu sử dụng các dịch vụ của Hzone',
                              style: robotoRegular.copyWith(
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Dimensions.paddingSizeExtraSmall,
                            right: Dimensions.paddingSizeDefault,
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeSmall),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Họ và tên',
                                  label: Text(
                                    'Họ và tên',
                                    style: robotoRegular,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: Dimensions.paddingSizeDefault,
                                    horizontal: Dimensions.paddingSizeSmall,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radiusDefault),
                                    borderSide: const BorderSide(width: 1),
                                  ),
                                ),
                                controller: _usernameController,
                                focusNode: _usernameNode,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeSmall),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Họ và tên',
                                  label: Text(
                                    'Họ và tên',
                                    style: robotoRegular,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: Dimensions.paddingSizeDefault,
                                    horizontal: Dimensions.paddingSizeSmall,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radiusDefault),
                                    borderSide: const BorderSide(width: 1),
                                  ),
                                ),
                                controller: _phoneController,
                                focusNode: _phoneNode,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.done,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeDefault,
                              ),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Expanded(
                                        child: MaterialButton(
                                            child: Text(
                                              'sign_up'.tr,
                                              style: robotoMedium,
                                            ),
                                            onPressed: () {})),
                                  ]),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1.5,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                              ),
                                              minimumSize: const Size(
                                                  Dimensions.webMaxWidth, 42),
                                              padding: EdgeInsets.zero,
                                            ),
                                            onPressed: () {},
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text('sign_in'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          robotoBold.copyWith(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        fontSize: Dimensions
                                                            .fontSizeLarge,
                                                      )),
                                                ]),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ]),
                ),
              ),
            )),
          ),
        ]),
      ),
    );
  }
}
