import 'package:flutter/material.dart';
import 'package:bestdoctorappointmentapp/doc_app.dart';
import 'package:bestdoctorappointmentapp/core/routes/app_router.dart';
import 'package:bestdoctorappointmentapp/core/di/dependancy_injection.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
