package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
@SourceDebugExtension
public final class TransitionKt$animateInt$1 extends Lambda implements Function3<q0.a, androidx.compose.runtime.i, Integer, o0> {
    public static final TransitionKt$animateInt$1 INSTANCE = new TransitionKt$animateInt$1();

    public TransitionKt$animateInt$1() {
        super(3);
    }

    public final o0 invoke(q0.a aVar, androidx.compose.runtime.i iVar, int i11) {
        iVar.P(-785273069);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-785273069, i11, -1, "androidx.compose.animation.core.animateInt.<anonymous> (Transition.kt:2118)");
        }
        o0 o0VarD = h.d(0.0f, 0.0f, 1, 3, null);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return o0VarD;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        android.support.v4.media.session.c.a(obj);
        return invoke((q0.a) null, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
    }
}
