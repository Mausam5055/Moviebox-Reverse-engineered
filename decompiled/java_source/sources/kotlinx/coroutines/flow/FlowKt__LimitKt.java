package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__LimitKt {

    public static final class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f67732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function2 f67733b;

        public a(b bVar, Function2 function2) {
            this.f67732a = bVar;
            this.f67733b = function2;
        }

        @Override // kotlinx.coroutines.flow.b
        public Object a(c cVar, Continuation continuation) {
            Object objA = this.f67732a.a(new FlowKt__LimitKt$dropWhile$1$1(new Ref.BooleanRef(), cVar, this.f67733b), continuation);
            return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
        }
    }

    public static final b a(b bVar, Function2 function2) {
        return new a(bVar, function2);
    }

    public static final b b(b bVar, Function2 function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(bVar, function2);
    }
}
