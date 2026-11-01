package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class o {

    public static final class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f67824a;

        public a(Object obj) {
            this.f67824a = obj;
        }

        @Override // kotlinx.coroutines.flow.b
        public Object a(c cVar, Continuation continuation) {
            Object objEmit = cVar.emit(this.f67824a, continuation);
            return objEmit == IntrinsicsKt.f() ? objEmit : Unit.f67061a;
        }
    }

    public static final b a(Function2 function2) {
        return new CallbackFlowBuilder(function2, null, 0, null, 14, null);
    }

    public static final b b(Function2 function2) {
        return new b1(function2);
    }

    public static final b c(Object obj) {
        return new a(obj);
    }
}
