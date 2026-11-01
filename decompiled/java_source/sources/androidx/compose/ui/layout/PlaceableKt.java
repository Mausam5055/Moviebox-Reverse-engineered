package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.c4;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.y0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class PlaceableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function1 f5148a = new Function1<c4, Unit>() { // from class: androidx.compose.ui.layout.PlaceableKt$DefaultLayerBlock$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((c4) obj);
            return Unit.f67061a;
        }

        public final void invoke(c4 c4Var) {
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f5149b = o0.c.b(0, 0, 0, 0, 15, null);

    public static final g0.a a(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        return new p(lookaheadCapablePlaceable);
    }

    public static final g0.a b(y0 y0Var) {
        return new e0(y0Var);
    }
}
