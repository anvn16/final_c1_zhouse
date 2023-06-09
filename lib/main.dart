import 'package:final_c1_zhouse/util/dimensions.dart';
import 'package:final_c1_zhouse/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: null,
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
          child: Column(
            children: [
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
                          color: Theme
                              .of(context)
                              .cardColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300]!,
                                blurRadius: 5,
                                spreadRadius: 1)
                          ],
                        ),
                        child:
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: Dimensions
                                  .paddingSizeSmall),
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
                                    child: CustomTextField(
                                      hintText: 'first_name'.tr,
                                      controller: _firstNameController,
                                      focusNode: _firstNameFocus,
                                      nextFocus: _lastNameFocus,
                                      inputType: TextInputType.name,
                                      capitalization: TextCapitalization.words,
                                      prefixIconData:
                                      CupertinoIcons.doc_person_fill,
                                      divider: false,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: Dimensions.paddingSizeSmall),
                                    child: CustomTextField(
                                      hintText: 'last_name'.tr,
                                      controller: _lastNameController,
                                      focusNode: _lastNameFocus,
                                      nextFocus: _emailFocus,
                                      inputType: TextInputType.name,
                                      capitalization: TextCapitalization.words,
                                      prefixIconData:
                                      Icons.perm_contact_cal_sharp,
                                      divider: false,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: Dimensions.paddingSizeSmall),
                                    child: CustomTextField(
                                      hintText: 'email'.tr,
                                      controller: _emailController,
                                      focusNode: _emailFocus,
                                      nextFocus: _phoneFocus,
                                      inputType: TextInputType.emailAddress,
                                      prefixIconData: CupertinoIcons.mail_solid,
                                      divider: false,
                                    ),
                                  ),

                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: Dimensions
                                              .paddingSizeSmall),
                                      child: CustomTextField(
                                        hintText: 'phone'.tr,
                                        controller: _phoneController,
                                        focusNode: _phoneFocus,
                                        nextFocus: _passwordFocus,
                                        inputType: TextInputType.phone,
                                        prefixText: '+84',
                                        divider: false,
                                      )),
                                  // const Padding(padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge), child: Divider(height: 1)),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: Dimensions.paddingSizeSmall),
                                    child: CustomTextField(
                                      hintText: 'password'.tr,
                                      controller: _passwordController,
                                      focusNode: _passwordFocus,
                                      nextFocus: _confirmPasswordFocus,
                                      inputType: TextInputType.visiblePassword,
                                      prefixIconData: Icons.key_rounded,
                                      isPassword: true,
                                      divider: false,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: Dimensions.paddingSizeSmall),
                                    child: CustomTextField(
                                      hintText: 'confirm_password'.tr,
                                      controller: _confirmPasswordController,
                                      focusNode: _confirmPasswordFocus,
                                      nextFocus: Get
                                          .find<SplashController>()
                                          .configModel!
                                          .refEarningStatus ==
                                          1
                                          ? _referCodeFocus
                                          : null,
                                      inputAction: Get
                                          .find<SplashController>()
                                          .configModel!
                                          .refEarningStatus ==
                                          1
                                          ? TextInputAction.next
                                          : TextInputAction.done,
                                      inputType: TextInputType.visiblePassword,
                                      prefixIconData: Icons.key_rounded,
                                      isPassword: true,
                                      onSubmit: (text) =>
                                      (GetPlatform.isWeb &&
                                          authController.acceptTerms)
                                          ? _register(
                                          authController, _countryDialCode!)
                                          : null,
                                    ),
                                  ),

                                  (Get
                                      .find<SplashController>()
                                      .configModel!
                                      .refEarningStatus ==
                                      1)
                                      ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical:
                                        Dimensions.paddingSizeSmall),
                                    child: CustomTextField(
                                      hintText: 'refer_code'.tr,
                                      controller: _referCodeController,
                                      focusNode: _referCodeFocus,
                                      inputAction: TextInputAction.done,
                                      inputType: TextInputType.text,
                                      capitalization:
                                      TextCapitalization.words,
                                      prefixIconData: Icons.share_rounded,
                                      divider: false,
                                      prefixSize: 14,
                                    ),
                                  )
                                      : const SizedBox(),
                                ]),
                              ),
                              const SizedBox(height: Dimensions
                                  .paddingSizeLarge),

                              //ConditionCheckBox(authController: authController),

                              !authController.isLoading
                                  ? Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: Dimensions.paddingSizeDefault,
                                ),
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Expanded(
                                          child: CustomButton(
                                            buttonText: 'sign_up'.tr,
                                            onPressed:
                                            authController.acceptTerms
                                                ? () =>
                                                _register(
                                                    authController,
                                                    _countryDialCode!)
                                                : null,
                                          )),
                                    ]),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                shape:
                                                RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1.5,
                                                      color: Theme
                                                          .of(
                                                          context)
                                                          .primaryColor),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      28),
                                                ),
                                                minimumSize: const Size(
                                                    Dimensions.webMaxWidth,
                                                    42),
                                                padding: EdgeInsets.zero,
                                              ),
                                              onPressed: () =>
                                                  Get.toNamed(
                                                      RouteHelper
                                                          .getSignInRoute(
                                                          RouteHelper
                                                              .signUp)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Text('sign_in'.tr,
                                                        textAlign: TextAlign
                                                            .center,
                                                        style: robotoBold
                                                            .copyWith(
                                                          color: Theme
                                                              .of(
                                                              context)
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
                              )
                                  : const Center(
                                  child: CircularProgressIndicator()),
                              const SizedBox(height: Dimensions
                                  .paddingSizeLarge),
                              // SocialLoginWidget(),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.paddingSizeLarge,
                                ),
                                child: GuestButton(),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  Dimensions.paddingSizeLarge,
                                  0,
                                  Dimensions.paddingSizeLarge,
                                  Dimensions.paddingSizeLarge,
                                ),
                                child: Row(
                                  children: [
                                    Text('i_agree_with'.tr,
                                        style: robotoRegular),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text('terms_conditions'.tr,
                                        style: robotoMedium.copyWith(
                                            color: Colors.blue)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                            ]);
                        ,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
