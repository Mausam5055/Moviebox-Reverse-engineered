package androidx.compose.ui.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ComposableSingletons$SubcomposeLayoutKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComposableSingletons$SubcomposeLayoutKt f5097a = new ComposableSingletons$SubcomposeLayoutKt();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Function2 f5098b = androidx.compose.runtime.internal.b.b(-1741544742, false, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.layout.ComposableSingletons$SubcomposeLayoutKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f67061a;
        }

        public final void invoke(androidx.compose.runtime.i iVar, int i11) {
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1741544742, i11, -1, "androidx.compose.ui.layout.ComposableSingletons$SubcomposeLayoutKt.lambda-1.<anonymous> (SubcomposeLayout.kt:473)");
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
    });

    public final Function2 a() {
        return f5098b;
    }
}
