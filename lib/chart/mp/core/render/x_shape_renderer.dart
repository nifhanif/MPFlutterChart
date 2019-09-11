import 'dart:ui';

import 'package:mp_flutter_chart/chart/mp/core/data_interfaces/i_scatter_data_set.dart';
import 'package:mp_flutter_chart/chart/mp/core/render/i_shape_renderer.dart';
import 'package:mp_flutter_chart/chart/mp/core/view_port.dart';
import 'package:mp_flutter_chart/chart/mp/core/utils/utils.dart';

class XShapeRenderer implements IShapeRenderer {
  @override
  void renderShape(
      Canvas c,
      IScatterDataSet dataSet,
      ViewPortHandler viewPortHandler,
      double posX,
      double posY,
      Paint renderPaint) {
    final double shapeHalf = dataSet.getScatterShapeSize() / 2;

    renderPaint
      ..style = PaintingStyle.stroke
      ..strokeWidth = Utils.convertDpToPixel(1);

    c.drawLine(Offset(posX - shapeHalf, posY - shapeHalf),
        Offset(posX + shapeHalf, posY + shapeHalf), renderPaint);
    c.drawLine(Offset(posX + shapeHalf, posY - shapeHalf),
        Offset(posX - shapeHalf, posY + shapeHalf), renderPaint);
  }
}