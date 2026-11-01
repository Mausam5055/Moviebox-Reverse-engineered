package androidx.compose.foundation;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class d0 implements f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f2621a = new d0();

    private d0() {
    }

    @Override // androidx.compose.foundation.f0
    public boolean a() {
        return false;
    }

    @Override // androidx.compose.foundation.f0
    public androidx.compose.ui.f b() {
        return androidx.compose.ui.f.f4178a;
    }

    @Override // androidx.compose.foundation.f0
    public long c(long j11, int i11, Function1 function1) {
        return ((y.g) function1.invoke(y.g.d(j11))).v();
    }

    @Override // androidx.compose.foundation.f0
    public Object d(long j11, Function2 function2, Continuation continuation) {
        Object objInvoke = function2.invoke(o0.z.b(j11), continuation);
        return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f67061a;
    }
}
