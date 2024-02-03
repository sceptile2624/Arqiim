import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.emailAddressCreateController ??= TextEditingController();
    _model.emailAddressCreateFocusNode ??= FocusNode();

    _model.passwordCreateController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1EFEE),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 60.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://scontent.fgdl11-1.fna.fbcdn.net/v/t39.30808-6/419733332_7002249943224559_8435396736173989874_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=3635dc&_nc_eui2=AeEOkd0ZCtwY6PTVL871PA1JQ3rSopPexfFDetKik97F8RVLVVGewpzlfMZ1z2cDISyaVu0IHHlnQ2ZhP5Zy_j1B&_nc_ohc=w6ooGZ6K_icAX9rRZAz&_nc_ht=scontent.fgdl11-1.fna&oh=00_AfC57y8zJghjx-uDWlN3Li-tKR8TdgWGVd_fBA5jn3XMqg&oe=65AC4F4C',
                      width: 240.0,
                      height: 209.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        isScrollable: true,
                        labelColor: FlutterFlowTheme.of(context).primaryBtnText,
                        labelPadding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        labelStyle: FlutterFlowTheme.of(context).titleMedium,
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                        tabs: const [
                          Tab(
                            text: 'Ingresar',
                          ),
                          Tab(
                            text: 'Nueva Cuenta',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.emailAddressController,
                                    focusNode: _model.emailAddressFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Email Address',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      hintText: 'Ingresa un email',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF0F1113),
                                        ),
                                    validator: _model
                                        .emailAddressControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 12.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.passwordController,
                                    focusNode: _model.passwordFocusNode,
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      hintText: 'Ingresa una contrasena',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF0F1113),
                                        ),
                                    validator: _model
                                        .passwordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user =
                                          await authManager.signInWithEmail(
                                        context,
                                        _model.emailAddressController.text,
                                        _model.passwordController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      context.goNamedAuth(
                                          'paginaEspera', context.mounted);
                                    },
                                    text: 'Iniciar Sesion',
                                    options: FFButtonOptions(
                                      width: 230.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.emailAddressCreateController,
                                    focusNode:
                                        _model.emailAddressCreateFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Email Address',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      hintText: 'Ingresa un email',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF0F1113),
                                        ),
                                    validator: _model
                                        .emailAddressCreateControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 12.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.passwordCreateController,
                                    focusNode: _model.passwordCreateFocusNode,
                                    obscureText:
                                        !_model.passwordCreateVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      hintText: 'Ingresa una contrasena',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model
                                                  .passwordCreateVisibility =
                                              !_model.passwordCreateVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordCreateVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF0F1113),
                                        ),
                                    validator: _model
                                        .passwordCreateControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user = await authManager
                                          .createAccountWithEmail(
                                        context,
                                        _model
                                            .emailAddressCreateController.text,
                                        _model.passwordCreateController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await UserRecord.collection
                                          .doc(user.uid)
                                          .update(createUserRecordData(
                                            email: _model
                                                .emailAddressCreateController
                                                .text,
                                            primerinicio: true,
                                          ));

                                      if (valueOrDefault<bool>(
                                          currentUserDocument?.primerinicio,
                                          false)) {
                                        context.pushNamedAuth(
                                            'completeProfile', context.mounted);
                                      } else {
                                        context.pushNamedAuth(
                                            'menu', context.mounted);
                                      }
                                    },
                                    text: 'Crea una cuenta',
                                    options: FFButtonOptions(
                                      width: 230.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
