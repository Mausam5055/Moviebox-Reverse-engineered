package androidx.compose.ui.input.rotary;

import androidx.compose.ui.f;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class b extends f.c implements f0.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f5090n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Function1 f5091o;

    public b(Function1 function1, Function1 function2) {
        this.f5090n = function1;
        this.f5091o = function2;
    }

    public final void D1(Function1 function1) {
        this.f5090n = function1;
    }

    public final void E1(Function1 function1) {
        this.f5091o = function1;
    }

    @Override // f0.a
    public boolean J0(f0.b bVar) {
        Function1 function1 = this.f5091o;
        if (function1 != null) {
            return ((Boolean) function1.invoke(bVar)).booleanValue();
        }
        return false;
    }

    @Override // f0.a
    public boolean X0(f0.b bVar) {
        Function1 function1 = this.f5090n;
        if (function1 != null) {
            return ((Boolean) function1.invoke(bVar)).booleanValue();
        }
        return false;
    }
}
