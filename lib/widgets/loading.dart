/*
* Copyright 2019 mark , All right reserved
* author : mark
* date : 2019-10-17
* ide : VSCode
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// loading
class MLoading {
  /// 10秒后若没有释放,则自动释放
  static int delayTime = 10;

  /// loading视图
  static Widget _loadingWidget;

  /// loading上下文
  static BuildContext _loadingCtx;

  /// 开始loading
  static void showLoading({@required BuildContext context, Widget customload}) {
    if (_loadingCtx != null) return;
    if (_loadingWidget != null) return;

    _loadingWidget = customload ??
        Center(
          child: CircularProgressIndicator(),
        );

    showDialog(
        context: context,
        builder: (ctx) {
          _loadingCtx = ctx;
          Future.delayed(Duration(seconds: delayTime)).then((var val) {
            dismiss();
          });
          return _loadingWidget;
        });
  }
  /// 消失
  static void dismiss() {
    if (_loadingCtx == null) return;
    Navigator.of(_loadingCtx).pop();
    _loadingCtx = null;
    _loadingWidget = null;
  }
}
