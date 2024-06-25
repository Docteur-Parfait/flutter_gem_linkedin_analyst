import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:linkedin_analyst/app/controllers/gemini_controller.dart';
import 'package:linkedin_analyst/app/models/result.dart';
import 'package:linkedin_analyst/globals/style.dart';
import 'package:linkedin_analyst/globals/widget_helper.dart';

class ResultScreen extends ConsumerStatefulWidget {
  const ResultScreen({super.key, required this.post});

  final String post;

  @override
  ConsumerState<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> {
  Result result = Result(advice: "", percentage: 0);
  int state = 0;

  Future<void> getResult() async {
    ref.read(geminiControllerProvider).getResult(widget.post).then((value) {
      if (value != null) {
        setState(() {
          result = value;
          state = 1;
        });
      }
    }).onError((error, stackTrace) {
      log("$error", name: "ERROR LOADING RESULT");
      setState(() {
        state = 2;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getResult();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Analyse Result')),
      body: [
        WidgetHelper.customCircularLoading(status: "Analysing..."),
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  "${result.percentage}%",
                  style: globalTextStyle(
                      fontSize: 65, fontWeight: FontWeight.w800),
                ),
                const Gap(15),
                Text("Advice to follow : ",
                    style: globalTextStyle(
                        fontSize: 22, fontWeight: FontWeight.w600)),
                const Gap(10),
                Text(result.advice!,
                    style: globalTextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
        WidgetHelper.errorElementComponent(onPressed: () {
          setState(() {
            state = 0;
          });
          getResult();
        })
      ][state],
    );
  }
}
