package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {
    public static final b A(b bVar, Function2 function2) {
        return FlowKt__TransformKt.a(bVar, function2);
    }

    public static final b B(b bVar, Function2 function2) {
        return FlowKt__EmittersKt.e(bVar, function2);
    }

    public static final b C(b bVar, long j11, Function2 function2) {
        return FlowKt__ErrorsKt.e(bVar, j11, function2);
    }

    public static final b E(b bVar, Function4 function4) {
        return FlowKt__ErrorsKt.g(bVar, function4);
    }

    public static final i1 F(b bVar, kotlinx.coroutines.n0 n0Var, g1 g1Var, Object obj) {
        return FlowKt__ShareKt.e(bVar, n0Var, g1Var, obj);
    }

    public static final b G(b bVar, Function2 function2) {
        return FlowKt__LimitKt.b(bVar, function2);
    }

    public static final b H(b bVar, Function3 function3) {
        return FlowKt__MergeKt.d(bVar, function3);
    }

    public static final c1 a(x0 x0Var) {
        return FlowKt__ShareKt.a(x0Var);
    }

    public static final i1 b(y0 y0Var) {
        return FlowKt__ShareKt.b(y0Var);
    }

    public static final b c(b bVar, int i11, BufferOverflow bufferOverflow) {
        return r.a(bVar, i11, bufferOverflow);
    }

    public static final b e(Function2 function2) {
        return o.a(function2);
    }

    public static final b f(b bVar, Function3 function3) {
        return FlowKt__ErrorsKt.a(bVar, function3);
    }

    public static final Object g(b bVar, c cVar, Continuation continuation) {
        return FlowKt__ErrorsKt.b(bVar, cVar, continuation);
    }

    public static final Object h(b bVar, Continuation continuation) {
        return FlowKt__CollectKt.a(bVar, continuation);
    }

    public static final Object i(b bVar, Function2 function2, Continuation continuation) {
        return FlowKt__CollectKt.b(bVar, function2, continuation);
    }

    public static final b j(b bVar) {
        return r.d(bVar);
    }

    public static final b k(b bVar) {
        return u.e(bVar);
    }

    public static final b l(b bVar, Function2 function2) {
        return FlowKt__LimitKt.a(bVar, function2);
    }

    public static final Object m(c cVar, kotlinx.coroutines.channels.q qVar, Continuation continuation) {
        return FlowKt__ChannelsKt.b(cVar, qVar, continuation);
    }

    public static final Object n(c cVar, b bVar, Continuation continuation) {
        return FlowKt__CollectKt.c(cVar, bVar, continuation);
    }

    public static final void o(c cVar) {
        FlowKt__EmittersKt.b(cVar);
    }

    public static final Object p(b bVar, Continuation continuation) {
        return FlowKt__ReduceKt.a(bVar, continuation);
    }

    public static final Object q(b bVar, Function2 function2, Continuation continuation) {
        return FlowKt__ReduceKt.b(bVar, function2, continuation);
    }

    public static final Object r(b bVar, Continuation continuation) {
        return FlowKt__ReduceKt.c(bVar, continuation);
    }

    public static final b s(Function2 function2) {
        return o.b(function2);
    }

    public static final b t(Object obj) {
        return o.c(obj);
    }

    public static final b u(b bVar, CoroutineContext coroutineContext) {
        return r.e(bVar, coroutineContext);
    }

    public static final t1 v(b bVar, kotlinx.coroutines.n0 n0Var) {
        return FlowKt__CollectKt.d(bVar, n0Var);
    }

    public static final b w(b bVar, Function2 function2) {
        return FlowKt__MergeKt.a(bVar, function2);
    }

    public static final b x(Iterable iterable) {
        return FlowKt__MergeKt.b(iterable);
    }

    public static final b y(b... bVarArr) {
        return FlowKt__MergeKt.c(bVarArr);
    }

    public static final b z(b bVar, Function3 function3) {
        return FlowKt__EmittersKt.d(bVar, function3);
    }
}
