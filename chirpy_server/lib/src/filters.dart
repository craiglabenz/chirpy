import 'package:chirpy_server/src/generated/protocol.dart';
import 'package:chirpy_shared/chirpy_shared.dart';
import 'package:serverpod/serverpod.dart';

enum BooleanLogic { and, or }

extension FilterExpression on Filter {
  Expression get expression {
    return switch (this) {
      PostFilter f => f.expression,
    };
  }
}

Expression combine(List<Filter> filters, BooleanLogic operator) {
  Expression? expression;
  for (final filter in filters) {
    if (expression == null) {
      expression = filter.expression;
    } else {
      expression = switch (operator) {
        BooleanLogic.and => expression & filter.expression,
        BooleanLogic.or => expression | filter.expression,
      };
    }
  }
  return expression!;
}

extension on PostFilter {
  Expression get expression => map(
        and: (f) => combine(f.children, BooleanLogic.and),
        or: (f) => combine(f.children, BooleanLogic.or),
        createdAfter: (f) => Post.t.createdAt > f.value,
        createdBefore: (f) => Post.t.createdAt < f.value,
        bodyContains: (f) => Post.t.body.like('%${f.value}%'),
      );
}
