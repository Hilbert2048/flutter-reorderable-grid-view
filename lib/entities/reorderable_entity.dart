import 'package:flutter/cupertino.dart';

class ReorderableEntity {
  final Widget child;
  final Size size;

  final int originalOrderId;
  final int updatedOrderId;

  final Offset originalOffset;
  final Offset updatedOffset;

  final bool isBuilding;
  final bool isNew;
  final bool hasSwappedOrder;

  const ReorderableEntity({
    required this.child,
    required this.originalOrderId,
    required this.updatedOrderId,
    required this.isBuilding,
    this.originalOffset = Offset.zero,
    this.updatedOffset = Offset.zero,
    this.size = Size.zero,
    this.isNew = false,
    this.hasSwappedOrder = false,
  });

  ReorderableEntity copyWith({
    Offset? originalOffset,
    Offset? updatedOffset,
    Widget? child,
    Size? size,
    int? originalOrderId,
    int? updatedOrderId,
    bool? isBuilding,
    bool? isNew,
    bool? hasSwappedOrder,
  }) =>
      ReorderableEntity(
        size: size ?? this.size,
        originalOffset: originalOffset ?? this.originalOffset,
        updatedOffset: updatedOffset ?? this.updatedOffset,
        child: child ?? this.child,
        updatedOrderId: updatedOrderId ?? this.updatedOrderId,
        originalOrderId: originalOrderId ?? this.originalOrderId,
        isBuilding: isBuilding ?? this.isBuilding,
        isNew: isNew ?? this.isNew,
        hasSwappedOrder: hasSwappedOrder ?? this.hasSwappedOrder,
      );

  int get keyHashCode => child.key.hashCode;
}
