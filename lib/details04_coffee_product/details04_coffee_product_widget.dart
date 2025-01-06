import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'details04_coffee_product_model.dart';
export 'details04_coffee_product_model.dart';

class Details04CoffeeProductWidget extends StatefulWidget {
  const Details04CoffeeProductWidget({super.key});

  @override
  State<Details04CoffeeProductWidget> createState() =>
      _Details04CoffeeProductWidgetState();
}

class _Details04CoffeeProductWidgetState
    extends State<Details04CoffeeProductWidget> {
  late Details04CoffeeProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Details04CoffeeProductModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: const Column(
          mainAxisSize: MainAxisSize.max,
          children: [],
        ),
      ),
    );
  }
}
