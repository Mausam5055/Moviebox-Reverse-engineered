package androidx.compose.ui.window;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ComposableSingletons$AndroidPopup_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComposableSingletons$AndroidPopup_androidKt f6524a = new ComposableSingletons$AndroidPopup_androidKt();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Function2 f6525b = androidx.compose.runtime.internal.b.b(-1131826196, false, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt$lambda-1$1
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
                androidx.compose.runtime.k.Q(-1131826196, i11, -1, "androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt.lambda-1.<anonymous> (AndroidPopup.android.kt:555)");
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
    });

    public final Function2 a() {
        return f6525b;
    }
}
