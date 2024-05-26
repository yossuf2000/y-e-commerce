import '/components/button_chep_try_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_button_choice_comp_model.dart';
export 'my_button_choice_comp_model.dart';

class MyButtonChoiceCompWidget extends StatefulWidget {
  const MyButtonChoiceCompWidget({super.key});

  @override
  State<MyButtonChoiceCompWidget> createState() =>
      _MyButtonChoiceCompWidgetState();
}

class _MyButtonChoiceCompWidgetState extends State<MyButtonChoiceCompWidget> {
  late MyButtonChoiceCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyButtonChoiceCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final compnames = _model.choicesnames.toList();
        return Wrap(
          spacing: 0.0,
          runSpacing: 0.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: List.generate(compnames.length, (compnamesIndex) {
            final compnamesItem = compnames[compnamesIndex];
            return ButtonChepTryWidget(
              key: Key('Key4j2_${compnamesIndex}_of_${compnames.length}'),
              chipName: _model.choice,
              choice: _model.choice,
              changeChoice: (thechoice) async {
                setState(() {
                  _model.choice = thechoice;
                });
              },
            );
          }),
        );
      },
    );
  }
}
