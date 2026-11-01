package androidx.compose.ui.input.pointer;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class k0 implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PointerInteropFilter f5005a;

    public void a(boolean z10) {
        PointerInteropFilter pointerInteropFilter = this.f5005a;
        if (pointerInteropFilter == null) {
            return;
        }
        pointerInteropFilter.j(z10);
    }

    public final void b(PointerInteropFilter pointerInteropFilter) {
        this.f5005a = pointerInteropFilter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        a(((Boolean) obj).booleanValue());
        return Unit.f67061a;
    }
}
