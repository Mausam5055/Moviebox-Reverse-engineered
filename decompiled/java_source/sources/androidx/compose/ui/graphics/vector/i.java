package androidx.compose.ui.graphics.vector;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function1 f4842a;

    private i() {
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void a(z.g gVar);

    public Function1 b() {
        return this.f4842a;
    }

    public final void c() {
        Function1 function1B = b();
        if (function1B != null) {
            function1B.invoke(this);
        }
    }

    public void d(Function1 function1) {
        this.f4842a = function1;
    }
}
