package androidx.compose.foundation.layout;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class SpacerMeasurePolicy implements androidx.compose.ui.layout.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpacerMeasurePolicy f2792a = new SpacerMeasurePolicy();

    private SpacerMeasurePolicy() {
    }

    @Override // androidx.compose.ui.layout.t
    public androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
        return androidx.compose.ui.layout.w.b(xVar, o0.b.j(j11) ? o0.b.l(j11) : 0, o0.b.i(j11) ? o0.b.k(j11) : 0, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.SpacerMeasurePolicy$measure$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
            }
        }, 4, null);
    }
}
