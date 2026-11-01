package c0;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f16971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i1 f16972b;

    private c(int i11, Function1 function1) {
        this.f16971a = function1;
        this.f16972b = u2.c(a.c(i11), null, 2, null);
    }

    public /* synthetic */ c(int i11, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, function1);
    }

    @Override // c0.b
    public int a() {
        return ((a) this.f16972b.getValue()).i();
    }

    public void b(int i11) {
        this.f16972b.setValue(a.c(i11));
    }
}
