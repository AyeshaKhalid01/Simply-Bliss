import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:posture_perfect/helpers/app_helper.dart';
import 'package:posture_perfect/helpers/camera_helper.dart';
import 'package:posture_perfect/helpers/tflite_helper.dart';
import 'package:posture_perfect/models/result.dart';
import 'package:tflite/tflite.dart';

class PostureCorrectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Posture Correct',style: TextStyle(color: Theme.of(context).primaryColor),),
        backgroundColor: Colors.white,),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Posture(),
        )
    );
  }
}
class Posture extends StatefulWidget {
  @override
  _PostureState createState() => _PostureState();
}
Future<String> loadModel() async{  return Tflite.loadModel(
model: "assets/yoga_classifier.tflite",
labels: "assets/labels.txt",
);
}
class _PostureState extends State<Posture> with TickerProviderStateMixin{
  AnimationController _colorAnimController;
  Animation _colorTween;

  List<Result> outputs;
  void initState() {
      super.initState();

      //Load TFLite Model
      TFLiteHelper.loadModel().then((value) {
        setState(() {
          TFLiteHelper.modelLoaded = true;
        });
      });

      //Initialize Camera
      CameraHelper.initializeCamera();

      //Setup Animation
      _setupAnimation();

      //Subscribe to TFLite's Classify events
      TFLiteHelper.tfLiteResultsController.stream.listen((value) {
        value.forEach((element) {
          _colorAnimController.animateTo(element.confidence,
              curve: Curves.bounceIn, duration: Duration(milliseconds: 500));
        });

        //Set Results
        outputs = value;

        //Update results on screen
        setState(() {
          //Set bit to false to allow detection again
          CameraHelper.isDetecting = false;
        });
      }, onDone: () {

      }, onError: (error) {
        AppHelper.log("listen", error);
      });
    }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Posture Detection'),
      ),
      body: FutureBuilder<void>(
        future: CameraHelper.initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return Stack(
              children: <Widget>[
                CameraPreview(CameraHelper.camera),
                _buildResultsWidget(width, outputs)
              ],
            );
          } else {
            // Otherwise, display a loading indicator.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );

}
  @override
  void dispose() {
    TFLiteHelper.disposeModel();
    CameraHelper.camera.dispose();
    AppHelper.log("dispose", "Clear resources.");
    super.dispose();
  }
  Widget _buildResultsWidget(double width, List<Result> outputs) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 200.0,
          width: width,
          color: Colors.white,
          child: outputs != null && outputs.isNotEmpty
              ? ListView.builder(
              itemCount: outputs.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Text(
                      outputs[index].label,
                      style: TextStyle(
                        color: _colorTween.value,
                        fontSize: 20.0,
                      ),
                    ),
                    AnimatedBuilder(
                        animation: _colorAnimController,
                        builder: (context, child) => LinearPercentIndicator(
                          width: width * 0.88,
                          lineHeight: 14.0,
                          percent: outputs[index].confidence,
                          progressColor: _colorTween.value,
                        )),
                    Text(
                      "${(outputs[index].confidence * 100.0).toStringAsFixed(2)} %",
                      style: TextStyle(
                        color: _colorTween.value,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                );
              })
              : Center(
              child: Text("Wating for model to detect..",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ))),
        ),
      ),
    );
  }

  void _setupAnimation() {
    _colorAnimController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _colorTween = ColorTween(begin: Colors.green, end: Colors.red)
        .animate(_colorAnimController);
  }
}

