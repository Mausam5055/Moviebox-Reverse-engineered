package androidx.compose.ui.input.pointer;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class PointerInteropFilter implements d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function1 f4946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k0 f4947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c0 f4949e = new PointerInteropFilter$pointerInputFilter$1(this);

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;", "", "(Ljava/lang/String;I)V", "Unknown", "Dispatching", "NotDispatching", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    enum DispatchToViewState {
        Unknown,
        Dispatching,
        NotDispatching
    }

    public final boolean a() {
        return this.f4948d;
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override // androidx.compose.ui.input.pointer.d0
    public c0 g() {
        return this.f4949e;
    }

    public final Function1 i() {
        Function1 function1 = this.f4946b;
        if (function1 != null) {
            return function1;
        }
        Intrinsics.z("onTouchEvent");
        return null;
    }

    public final void j(boolean z10) {
        this.f4948d = z10;
    }

    public final void k(Function1 function1) {
        this.f4946b = function1;
    }

    public final void l(k0 k0Var) {
        k0 k0Var2 = this.f4947c;
        if (k0Var2 != null) {
            k0Var2.b(null);
        }
        this.f4947c = k0Var;
        if (k0Var == null) {
            return;
        }
        k0Var.b(this);
    }
}
