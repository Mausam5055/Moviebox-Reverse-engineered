package androidx.compose.foundation.text;

import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.layout.x;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class EmptyMeasurePolicy implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EmptyMeasurePolicy f3192a = new EmptyMeasurePolicy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Function1 f3193b = new Function1<g0.a, Unit>() { // from class: androidx.compose.foundation.text.EmptyMeasurePolicy$placementBlock$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((g0.a) obj);
            return Unit.f67061a;
        }

        public final void invoke(g0.a aVar) {
        }
    };

    private EmptyMeasurePolicy() {
    }

    @Override // androidx.compose.ui.layout.t
    public v c(x xVar, List list, long j11) {
        return w.b(xVar, o0.b.l(j11), o0.b.k(j11), null, f3193b, 4, null);
    }
}
