package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes.dex */
final class DefaultScrollableState implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f2652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k f2653b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MutatorMutex f2654c = new MutatorMutex();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f2655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f2656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i1 f2657f;

    public static final class a implements k {
        a() {
        }

        @Override // androidx.compose.foundation.gestures.k
        public float a(float f11) {
            if (Float.isNaN(f11)) {
                return 0.0f;
            }
            float fFloatValue = ((Number) DefaultScrollableState.this.k().invoke(Float.valueOf(f11))).floatValue();
            DefaultScrollableState.this.f2656e.setValue(Boolean.valueOf(fFloatValue > 0.0f));
            DefaultScrollableState.this.f2657f.setValue(Boolean.valueOf(fFloatValue < 0.0f));
            return fFloatValue;
        }
    }

    public DefaultScrollableState(Function1 function1) {
        this.f2652a = function1;
        Boolean bool = Boolean.FALSE;
        this.f2655d = u2.c(bool, null, 2, null);
        this.f2656e = u2.c(bool, null, 2, null);
        this.f2657f = u2.c(bool, null, 2, null);
    }

    @Override // androidx.compose.foundation.gestures.o
    public boolean a() {
        return ((Boolean) this.f2655d.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.o
    public /* synthetic */ boolean b() {
        return n.a(this);
    }

    @Override // androidx.compose.foundation.gestures.o
    public Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objE = o0.e(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }

    @Override // androidx.compose.foundation.gestures.o
    public /* synthetic */ boolean d() {
        return n.b(this);
    }

    @Override // androidx.compose.foundation.gestures.o
    public float e(float f11) {
        return ((Number) this.f2652a.invoke(Float.valueOf(f11))).floatValue();
    }

    public final Function1 k() {
        return this.f2652a;
    }
}
