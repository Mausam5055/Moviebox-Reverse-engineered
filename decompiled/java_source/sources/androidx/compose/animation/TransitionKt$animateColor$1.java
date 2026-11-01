package androidx.compose.animation;

import androidx.compose.animation.core.o0;
import androidx.compose.animation.core.q0;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
@SourceDebugExtension
public final class TransitionKt$animateColor$1 extends Lambda implements Function3<q0.a, i, Integer, o0> {
    public static final TransitionKt$animateColor$1 INSTANCE = new TransitionKt$animateColor$1();

    public TransitionKt$animateColor$1() {
        super(3);
    }

    public final o0 invoke(q0.a aVar, i iVar, int i11) {
        iVar.P(-1457805428);
        if (k.H()) {
            k.Q(-1457805428, i11, -1, "androidx.compose.animation.animateColor.<anonymous> (Transition.kt:64)");
        }
        o0 o0VarD = androidx.compose.animation.core.h.d(0.0f, 0.0f, null, 7, null);
        if (k.H()) {
            k.P();
        }
        iVar.K();
        return o0VarD;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        android.support.v4.media.session.c.a(obj);
        return invoke((q0.a) null, (i) obj2, ((Number) obj3).intValue());
    }
}
