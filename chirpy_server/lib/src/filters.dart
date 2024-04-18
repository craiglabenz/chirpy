import 'package:chirpy_server/src/generated/protocol.dart';
import 'package:chirpy_shared/chirpy_shared.dart';
import 'package:serverpod/serverpod.dart';

extension FilterExpression<T> on Filter<T> {
  Expression get expression {
    if (this is ComboFilter<T>) {
      return (this as ComboFilter).expression;
    } else if (this is PostFilter) {
      return (this as PostFilter).expression;
    }
    throw Exception('Unexpected type of filter: $runtimeType');
  }
}

extension on ComboFilter {
  Expression get expression {
    Expression? expression;
    for (final child in children) {
      if (expression != null) {
        expression = child.expression;
      } else {
        expression = switch (operator) {
          BooleanLogic.and => expression! & child.expression,
          BooleanLogic.or => expression! | child.expression,
        };
      }
    }
    return expression!;
  }
}

extension on PostFilter {
  Expression get expression => map(
        createdAfter: (_) => Post.t.createdAt > value,
        createdBefore: (_) => Post.t.createdAt < value,
        bodyContains: (_) => Post.t.body.like('%$value%'),
      );
}
